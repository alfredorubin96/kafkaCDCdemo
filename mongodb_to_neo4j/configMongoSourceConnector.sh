# Debezium Docs for Mongo: https://debezium.io/documentation/reference/stable/connectors/mongodb.html
# At the end, instead of the Debezium Connector for Mongo, we used: https://www.confluent.io/hub/mongodb/kafka-connect-mongodb

# To delete a config inside KafkaConnect
# curl -X DELETE http://localhost:8083/connectors/mongoSourceConfig

# Sending the connector configuration to Debezium
curl -X POST http://localhost:8083/connectors \
  -H 'Content-Type:application/json' \
  -H 'Accept:application/json' \
  -d @kakfaConnectConfigs/mongoSourceConfig.json
