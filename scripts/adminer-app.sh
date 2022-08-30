#!/bin/bash

# ArgoCD Create Adminer App (DB Admin)
argocd app create adminer \
--repo https://github.com/d-e-a-n-f/lab-cluster-gitops.git \
--path infra/adminer \
--dest-namespace adminer \
--dest-server https://kubernetes.default.svc \
--directory-recurse \
--insecure