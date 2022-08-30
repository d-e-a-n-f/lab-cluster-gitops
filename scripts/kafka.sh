#!/bin/bash

# ArgoCD Create Kafka Backbone
argocd app create kafka \
--repo https://github.com/d-e-a-n-f/lab-cluster-gitops.git \
--path infra/kafka \
--dest-namespace kafka \
--dest-server https://kubernetes.default.svc \
--directory-recurse \
--insecure