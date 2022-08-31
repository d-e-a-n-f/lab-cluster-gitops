#!/bin/bash

# ArgoCD Create Keycloak App (Identity Provider)
argocd app create keycloak \
--repo https://github.com/d-e-a-n-f/lab-cluster-gitops.git \
--path infra/keycloak \
--dest-namespace default \
--dest-server https://kubernetes.default.svc \
--directory-recurse \
--insecure