# Benchmarking Elasticsearch high term counts

This contains some benchmarks of how Elasticsearch handles a high number of term counts, even when it returns an error.

## Single node, 200k term list

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

## Three node cluster, 200k term list

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
