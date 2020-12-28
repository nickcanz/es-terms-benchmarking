set -exu

docker-compose up -d

tries=0
until success=$(curl -s localhost:9200)
do
  tries=$((tries+1))
  sleep 10
  echo "Waiting for Elasticsearch to start..."

  if [[ $tries -gt 20 ]]; then
    echo "Elasticsearch failed to start in 200 seconds, check docker logs"
    exit 1
  fi
done

hyperfine --warmup 3 --min-runs 5 \
  --parameter-list shard_count 1,5,10,25,50,100,150,200 \
  --parameter-list mapping_type keyword,long \
  --parameter-list term_count 10,100,500,1000,2000,5000,10000,15000,25000,50000,100000,200000 \
  --prepare 'SHARD_COUNT={shard_count} MAPPING_TYPE={mapping_type} TERM_COUNT={term_count} bash ./prepare_benchmark.sh' \
  --cleanup 'bash ./clean_up.sh' \
  --export-markdown output/three_node_benchmark.md \
  --export-json output/three_node_benchmark.json \
  'SHARD_COUNT={shard_count} bash ./make_query.sh'

docker-compose down
