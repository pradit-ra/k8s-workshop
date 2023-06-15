#!/usr/bin/env bash

kubectl apply -f ../resources/service.yaml
# service is kind of load balance which will route traffic into group of pod that's matched with 
# label selector ie. app=nginx
kubeclt describe services/nginx
kubectl port-forward svc/nginx 8080:80
