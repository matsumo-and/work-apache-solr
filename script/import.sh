curl -X POST -H 'Content-type:application/json' --data-binary '{
  "add-field" :{
    "name":"chapter",
    "type":"string",
    "indexed":"true",
    "stored":"true",
    "required":"ture",
    "multiValued":"false"
  },
  "add-field" :{
    "name":"title",
    "type":"text_ja",
    "indexed":"true",
    "stored":"true",
    "required":"ture",
    "multiValued":"false"
  },
  "add-field" :{
    "name":"body",
    "type":"text_ja",
    "indexed":"true",
    "stored":"true",
    "required":"ture",
    "multiValued":"false"
  },
  "add-field" :{
    "name":"author",
    "type":"text_ja",
    "indexed":"true",
    "stored":"true",
    "required":"ture",
    "multiValued":"true"
  }
}' http://localhost:8983/solr/product/schema;

pwd;
less './input/Product_v6.csv';
curl 'http://localhost:8983/solr/product/update?commit=true' --data-binary ./input/Product_v6.csv -H 'Content-type:application/csv';