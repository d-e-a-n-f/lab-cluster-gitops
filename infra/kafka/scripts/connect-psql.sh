
curl --location --request POST 'http://localhost:8083/connectors/' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "sde-connector",
    "config": {
        "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
        "database.hostname": "acid-primarycluster.default.svc.cluster.local",
        "database.port": "5432",
        "tasks.max": "1",
        "database.user": "postgres",
        "database.password": "eGYwi2Ai6NlttkhyUENmXojv3SJHtAclneIWgCqhzd4KMUYcPduNY5bvRTVI7n8r",
        "database.dbname": "primaryapp",
        "database.server.name": "orgs",
        "database.history.kafka.bootstrap.servers": "lab-kafka-kafka-bootstrap:9093",
        "database.history.kafka.topic": "schema-changes.inventory",
        "database.whitelist": "primaryapp",
        "include.schema.changes": true,
        "database.server.id": "184054"
    }
}'