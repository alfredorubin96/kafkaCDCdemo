# Sending the connector configuration to Debezium
curl -i -X PUT -H "Content-Type:application/json" \
  http://localhost:8083/connectors/source-debezium-orders-00/config \
  -d '{
            "connector.class": "io.debezium.connector.mysql.MySqlConnector",
            "database.hostname": "my-sql",
            "database.port": "3306",
            "database.user": "debezium",
            "database.password": "password",
            "database.server.id": "42",
            "database.server.name": "mysql_connector",
            "table.whitelist": "demo.customers,demo.orders",
            "database.history.kafka.bootstrap.servers": "broker:9092",
            "database.history.kafka.topic": "dbhistory.demo" ,
            "decimal.handling.mode": "double",
            "include.schema.changes": "true",
            "transforms": "dropTopicPrefix",
            "transforms.dropTopicPrefix.type":"org.apache.kafka.connect.transforms.RegexRouter",
            "transforms.dropTopicPrefix.regex":"mysql_connector.demo.(.*)",
            "transforms.dropTopicPrefix.replacement":"$1",
            "key.converter": "io.confluent.connect.avro.AvroConverter",
            "key.converter.schema.registry.url": "http://schema-registry:8081",
            "value.converter": "io.confluent.connect.avro.AvroConverter",
            "value.converter.schema.registry.url": "http://schema-registry:8081"
    }'