#!/bin/bash

# ArgoCD Manage Itself
argocd app create argocd \
--repo https://github.com/d-e-a-n-f/lab-cluster-gitops.git \
--path operators/argocd \
--dest-namespace argocd \
--dest-server https://kubernetes.default.svc \
--directory-recurse \
--insecure