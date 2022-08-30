#!/bin/bash

# ArgoCD Create Kafka Backbone Operator
argocd app create kafka-operator \
--repo https://github.com/d-e-a-n-f/lab-cluster-gitops.git \
--path infra/kafka \
--dest-namespace kafka \
--dest-server https://kubernetes.default.svc \
--directory-recurse \
--insecure