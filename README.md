# Change Data Capture With Kafka Hands On

This repository contains different playgrounds that you can use to test the CDC from a database to a Neo4j database using Kafka and Kafka Connect.

Right now, the repository contains two different demos:

1. MySql to Neo4j (using Debezium as a source connector from MySql and the Neo4j Kafka Connect plugin as a sink connector to Neo4j)
2. MongoDB to Neo4j (using the official Mongo Kafka Connect plugin as a source connector from MongoDB and the Neo4j Kafka Connect plugin as a sink connector to Neo4j)
