#!/usr/bin/env bash
kubectl config current-context

kubectl config use-context kind-k8s-local

kubectl config set-context --namespace=default --current

# check .kube/config file content
cat ~/.kube/config

# set context in easy way
brew install kubectx

kubectx kind-k8s-local

# bonus point we can set default namespace
kubectl create ns k8s-workshop
kubens k8s-workshop


