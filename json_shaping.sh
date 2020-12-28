cat output/three_node_benchmark.json | jq '.results[] | {mean: .mean, max: .max, min: .min, median: .median, mapping_type: .parameters.mapping_type, shard_count: .parameters.shard_count|tonumber, term_count: .parameters.term_count|tonumber }' | jq -s > output/three_node_benchmark_shaped.json
