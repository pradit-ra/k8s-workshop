#!/usr/bin/env bash
kubectl api-resources

# This helps to understand available resources api in the cluster and
# short name

# We should care about version of the api that can be changed/deprecated in the future release
# The version of the resource will be set in yaml

# apiVersion: v1
# kind: Pod

kubectl get storageclasses

# This is a resource to determine what kind of GCP cloud storage will be mounted into the pod if needed
# So essentially, we should know the storage type that provides high-perf and low-cost possible.
# We can explore the offer of GCP and make a change if required

kubectl get clusterroles
kubectl get clusterrolebindings
# We should introduce RBAC access to restrict k8s users (User level security)
# admin                                                                  2023-06-15T02:54:13Z
# cluster-admin                                                          2023-06-15T02:54:13Z
# edit                                                                   2023-06-15T02:54:13Z
# These 3 roles is pre-define but we might need least-privilge for k8s user.


kubectl get clusterroles cluster-admin -oyaml
# look permission inside

kubectl get roles -A

# This is application level security. The role restrict the application access k8s cluster
# The role will be associated with service-account and namespace. see 
kubectl get rolesbinding -A
kubectl get rolebinding system:controller:cloud-provider -oyaml
