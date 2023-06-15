#!/usr/bin/env bash

kubectl apply -f ../resources/pod.yaml
kubectl port-forward pods/nginx 8080:80
# deploy smallest/simplest unit of work called POD


kubectl apply -f ../resources/deployment.yaml
# apply deployment resource contain multiple pod running and given 5 desired pod
# The deployment resource will guarantee there will be 5 pod running simultaneous 
# And aslo apply rolling update strategy.
