# To delete a config inside KafkaConnect
# curl -X DELETE http://localhost:8084/connectors/Neo4jSinkConnector

# Sending the configuration to Kafka Neo4j Connect
curl -X POST http://localhost:8084/connectors \
  -H 'Content-Type:application/json' \
  -H 'Accept:application/json' \
  -d @kakfaConnectConfigs/neo4jConnectConfig.json

