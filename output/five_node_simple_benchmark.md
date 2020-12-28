| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `SHARD_COUNT=1 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 366.0 ± 48.7 | 325.5 | 444.0 | 1.00 |
| `SHARD_COUNT=5 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 535.2 ± 62.0 | 458.0 | 624.2 | 1.46 ± 0.26 |
| `SHARD_COUNT=10 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 781.3 ± 46.4 | 700.4 | 815.7 | 2.14 ± 0.31 |
| `SHARD_COUNT=25 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 1489.7 ± 132.1 | 1324.7 | 1652.0 | 4.07 ± 0.65 |
| `SHARD_COUNT=50 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 2165.2 ± 113.5 | 2028.3 | 2333.3 | 5.92 ± 0.85 |
| `SHARD_COUNT=100 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 4162.8 ± 139.9 | 4030.3 | 4360.1 | 11.38 ± 1.56 |
| `SHARD_COUNT=150 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 18488.1 ± 1056.2 | 17372.4 | 19865.8 | 50.52 ± 7.32 |
| `SHARD_COUNT=200 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 25321.6 ± 925.8 | 24325.1 | 26823.3 | 69.19 ± 9.56 |
