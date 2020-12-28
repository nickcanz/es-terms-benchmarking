set -eu

curl -H'Content-Type:application/json' -XPUT localhost:9200/test_$SHARD_COUNT -d"{
  \"settings\": {
    \"number_of_shards\": $SHARD_COUNT,
    \"number_of_replicas\": 0
  },
  \"mappings\": {
    \"properties\": {
      \"user_id\": { \"type\": \"$MAPPING_TYPE\" }
    }
  }
}"

cat << EOF > tmp/query_body.json
{
  "from": 0,
  "size": 10,
  "timeout": "500ms",
  "query": {
    "bool": {
      "filter": [
        {
          "terms": {
            "user_id": [
EOF

i=$TERM_COUNT

term_value="123456789012345"

if [[ "$MAPPING_TYPE" == "keyword" ]];
then
  term_value="\"$term_value\""
fi

while [ $i -gt 1 ];
do
  echo "$term_value," >> tmp/query_body.json
  i=$(($i-1))
done

echo "$term_value" >> tmp/query_body.json
cat << EOF >> tmp/query_body.json
						]
					}
        }
      ]
    }
  }
}
EOF
