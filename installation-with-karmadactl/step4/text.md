Register two clusters to control plane.
The environment only have one cluster which has become control plane.So we will use kind to create two new clusters.
kind is a tool for running local Kubernetes clusters using Docker container “nodes”.

Install kind from release binaries.

`curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.14.0/kind-linux-amd64`{{exec}}
`chmod +x ./kind`{{exec}}
`sudo mv ./kind /usr/local/bin/kind`{{exec}}

Create two new clusters.

`kind create cluster --name member1 --kubeconfig $HOME/.kube/member1.config --image kindest/node:v1.23.0`{{exec}}
`kind create cluster --name member2 --kubeconfig $HOME/.kube/member2.config --image kindest/node:v1.23.0`{{exec}}

Check the new cluster member1 and member2

`kind get clusters`{{exec}}

Register the two new clusters to control plane.

`karmadactl join member1 --cluster-kubeconfig=$HOME/.kube/member1.config`{{exec}}
`karmadactl join member2 --cluster-kubeconfig=$HOME/.kube/member2.config`{{exec}}