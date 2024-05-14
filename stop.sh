#!/bin/bash


zookeeper_file="zookeeper.yaml"
kafka_broker="kafka_broker.yaml"
application_file="app.yaml"


if [ ! -f $zookeeper_file ]; then
	echo -e "Error: $zookeeper_file file not found"
	exit 1
fi

if [ ! -f $kafka_broker ]; then
	echo -e "Error: $kafka_broker not found"
	exit 1
fi

if [ ! -f $application_file ]; then
	echo -e "Error: $application_file not found"
	exit 1
fi

kubectl delete -f $zookeeper_file
kubectl delete -f $kafka_broker
kubectl apply -f $application_file
