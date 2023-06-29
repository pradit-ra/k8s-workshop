# K8s Workshop

## Prerequisite

- Docker
- Kind [https://kind.sigs.k8s.io/]
- Kubectl

Install kubernetes cli `brew install kubernetes-cli`

Install k8s kind `brew install kind`

Create cluster `kind create cluster --name k8s-local`

```sh
cat <<EOF | kind create cluster --name k8s-local --config=-
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
  kubeadmConfigPatches:
  - |
    kind: InitConfiguration
    nodeRegistration:
      kubeletExtraArgs:
        node-labels: "ingress-ready=true"
  extraPortMappings:
  - containerPort: 80
    hostPort: 80
    protocol: TCP
  - containerPort: 443
    hostPort: 443
    protocol: TCP
EOF
```
