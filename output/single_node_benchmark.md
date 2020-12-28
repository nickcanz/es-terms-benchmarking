| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `SHARD_COUNT=1 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 352.3 ± 36.6 | 316.0 | 399.4 | 1.23 ± 0.14 |
| `SHARD_COUNT=5 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 352.9 ± 53.0 | 292.5 | 412.6 | 1.24 ± 0.19 |
| `SHARD_COUNT=10 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 330.6 ± 83.8 | 257.8 | 474.5 | 1.16 ± 0.30 |
| `SHARD_COUNT=25 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 291.3 ± 22.6 | 263.8 | 323.2 | 1.02 ± 0.09 |
| `SHARD_COUNT=50 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 302.9 ± 35.8 | 271.8 | 364.6 | 1.06 ± 0.13 |
| `SHARD_COUNT=100 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 346.9 ± 102.2 | 277.9 | 527.9 | 1.22 ± 0.36 |
| `SHARD_COUNT=150 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 285.3 ± 11.3 | 272.3 | 301.8 | 1.00 |
| `SHARD_COUNT=200 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 299.4 ± 15.9 | 290.2 | 327.7 | 1.05 ± 0.07 |
