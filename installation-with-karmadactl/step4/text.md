Register two clusters to control plane.

The environment only have one cluster which has become control plane.

So we will use kind to create two new clusters.

kind is a tool for running local Kubernetes clusters using Docker container “nodes”.

Install kind from release binaries.

```
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.14.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
```{{exec}}

Create two new clusters.
This process can consume more time.
`kind create cluster --name member1 --kubeconfig $HOME/.kube/member1.config --image kindest/node:v1.23.0`{{exec}}

`kind create cluster --name member2 --kubeconfig $HOME/.kube/member2.config --image kindest/node:v1.23.0`{{exec}}

Check the new cluster member1 and member2

`kind get clusters`{{exec}}

Register the two new clusters to control plane.

`karmadactl join kind-member1 --cluster-kubeconfig=$HOME/.kube/member1.config --kubeconfig /etc/karmada/karmada-apiserver.config`{{exec}}

`karmadactl join kind-member2 --cluster-kubeconfig=$HOME/.kube/member2.config --kubeconfig /etc/karmada/karmada-apiserver.config`{{exec}}