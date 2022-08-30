#!/bin/bash

# ArgoCD Create Postgres Operator
argocd app create postgres-operator --repo https://github.com/d-e-a-n-f/lab-cluster-gitops.git --path operators/postgres-operator/manifests/ --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --insecure