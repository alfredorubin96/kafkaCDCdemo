# To delete a config inside KafkaConnect
# curl -X DELETE http://localhost:8083/connectors/debeziumConfig

# Sending the connector configuration to Debezium
curl -X POST http://localhost:8083/connectors \
  -H 'Content-Type:application/json' \
  -H 'Accept:application/json' \
  -d @kakfaConnectConfigs/debeziumConfig.json
