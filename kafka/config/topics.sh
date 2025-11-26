#!/bin/bash

echo "Creating topics in Kafka..."

docker exec kafka kafka-topics --create --topic api-logs --bootstrap-server kafka:29092 --partitions 3 --replication-factor 1 --if-not-exists
docker exec kafka kafka-topics --create --topic repository-logs --bootstrap-server kafka:29092 --partitions 3 --replication-factor 1 --if-not-exists

echo "Topics created successfully!"
