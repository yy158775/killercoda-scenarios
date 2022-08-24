Register the new cluster to the control plane.

Beacause karmada-apiserver is the is the main kubeconfig to be used when interacting with the Karmada control plane,we use --kubeconfig to set it.

```
export PATH=$PATH:/root/
karmadactl join kind-member1 --cluster-kubeconfig=$HOME/.kube/member1.config --kubeconfig /etc/karmada/karmada-apiserver.config
```{{exec}}


```
export PATH=$PATH:/root/
karmadactl join kubernetes --cluster-kubeconfig ~/.kube/config --kubeconfig /etc/karmada/karmada-apiserver.config
```{{exec}}