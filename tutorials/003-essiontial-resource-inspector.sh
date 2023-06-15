#!/usr/bin/env bash
kubectl get nodes -o wide

# List all vm node instances
kubectl ps nodes

# See resource usages of nodes. This require metric-server installed into the cluster
kubens kube-system
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
# The deployment might be error due to certification validation failure
# Let's dig into the log and hands-on hotfix by adding --kubelet-insecure-tls in deployment

kubectl logs -f -l k8s-app=metrics-server
kubectl get deployment -l k8s-app=metrics-server

kubectl edit deploy metrics-server

watch kubectl get pod

# then after all fixed we can
kubectl top nodes
kubectl top pod
