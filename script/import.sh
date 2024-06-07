pwd;
curl 'http://localhost:8983/solr/product/update/csv?commit=true' --data-binary @./input/Product_v6.csv -H 'Content-type:application/csv';