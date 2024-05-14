# Kafka laboratoy

## Instructions

1. `./run.sh`.

2. `kubectl exec -it kafka-broker -- bash`.

3. `kafka-topics --bootstrap-server kafka-broker:9092 --create --topic univalle-ideas`.

4. `kafka-console-producer --bootstrap-server kafka-broker:9092 --topic univalle-ideas`.

5. Split the terminal and now type the first ($1$) command.

6. `kafka-console-consumer --bootstrap-server kafka-broker:9092 --topic univalle-ideas --from-beginning`.

7. `kubectl logs app`: receive events.

8. `kubectl exec -it app -- bash`.

9. `node test-producer/server.js`: send an event.

10. `./stop.sh`.
