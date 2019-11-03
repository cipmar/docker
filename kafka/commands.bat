rem start zookeeper
zookeeper-server-start.bat ../../config/zookeeper.properties

rem start nodes
kafka-server-start.bat ../../config/server.properties
kafka-server-start.bat ../../config/server-1.properties
kafka-server-start.bat ../../config/server-2.properties

rem create topic
kafka-topics.bat --create --bootstrap-server localhost:9092 --replication-factor 3 --partitions 1 --topic mytopic

rem producer
kafka-console-producer.bat --broker-list localhost:9092 --topic mytopic

rem consumer
kafka-console-consumer.bat --bootstrap-server localhost:9092 --from-beginning --topic mytopic
