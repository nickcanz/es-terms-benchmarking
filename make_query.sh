set -exu

curl -XGET -H'Content-Type:application/json' localhost:9200/test_$SHARD_COUNT/_search -d@tmp/query_body.json
