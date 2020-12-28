set -eu

curl -XDELETE localhost:9200/test_*
rm tmp/*
