Create a new cluster using kind.

The environment only have one cluster which has become control plane.

So we will use kind to create a new clusters.

kind is a tool for running local Kubernetes clusters using Docker container “nodes”.

Install kind from release binaries.

```
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.14.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
```{{exec}}

Create a new clusters.
This process can consume more time.

```
wget https://github.com/yy158775/killercoda-scenarios/raw/main/member1.yaml
cat member1.yaml
```{{exec}}

```
kind create cluster --name member1 --kubeconfig $HOME/.kube/member1.config --image kindest/node:v1.23.0 --config member1.yaml
```{{exec}}