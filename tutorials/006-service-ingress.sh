#!/usr/bin/env bash

kubectl apply -f ../resources/service.yaml
# service is kind of load balance which will route traffic into group of pod that's matched with 
# label selector ie. app=backend
kubeclt describe services/backend-svc
kubectl port-forward svc/backend-svc 8080


# install nginx ingress-controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
kubectl get pods -n ingress-nginx

# create ingress
kubectl apply -f ../resources/ingress.yaml

