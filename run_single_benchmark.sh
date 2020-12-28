set -eu

container=$(docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.10.1)

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
  --parameter-list mapping_type keyword \
  --parameter-list term_count 200000 \
  --prepare 'SHARD_COUNT={shard_count} MAPPING_TYPE={mapping_type} TERM_COUNT={term_count} bash ./prepare_benchmark.sh' \
  --cleanup 'bash ./clean_up.sh' \
  --export-markdown output/single_node_benchmark.md \
  --export-json output/single_node_benchmark.json \
  'SHARD_COUNT={shard_count} MAPPING_TYPE={mapping_type} bash ./make_query.sh'

docker stop $container
