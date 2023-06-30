#!/usr/bin/env bash

# create configmap contains static html page
kubectl apply -f ../resources/configmap.yaml

# Re apply deployment that mount config map as volume
kubectl apply -f ../resources/deployment-cm.yaml

# you can port forward seeing the page content has been changed!

# We can also create secret and use secret as secret file or via Env secretRef

