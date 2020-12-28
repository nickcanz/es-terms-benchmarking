| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `SHARD_COUNT=1 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 393.2 ± 96.9 | 318.8 | 560.8 | 1.00 |
| `SHARD_COUNT=5 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 500.3 ± 63.6 | 421.9 | 580.3 | 1.27 ± 0.35 |
| `SHARD_COUNT=10 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 729.3 ± 107.9 | 603.1 | 871.1 | 1.86 ± 0.53 |
| `SHARD_COUNT=25 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 1110.2 ± 83.0 | 1059.1 | 1255.5 | 2.82 ± 0.73 |
| `SHARD_COUNT=50 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 1763.3 ± 110.9 | 1574.8 | 1868.9 | 4.49 ± 1.14 |
| `SHARD_COUNT=100 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 3552.0 ± 148.6 | 3374.9 | 3785.6 | 9.03 ± 2.26 |
| `SHARD_COUNT=150 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 10446.9 ± 485.8 | 9726.2 | 10856.2 | 26.57 ± 6.67 |
| `SHARD_COUNT=200 MAPPING_TYPE=keyword TERM_COUNT=200000 bash ./make_query.sh` | 13380.0 ± 326.5 | 13130.7 | 13933.6 | 34.03 ± 8.43 |
