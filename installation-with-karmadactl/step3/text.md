Check contexts of kubeconfig.
`kubectl config view --kubeconfig /etc/karmada/karmada-apiserver.config`{{exec}}

You can find now we have two contexts karmada-apiserver and karmada-host.
karmada-apiserver is generated after we install the karmada in the kubernetes cluster.

Check the detailed information of the config.
`kubectl config view --kubeconfig ~/.kube/config`{{exec}}

You can find we have two config use the same server with different ports.

The karmada-apiserver is the main kubeconfig to be used when interacting with the Karmada control plane, while karmada-host is only used for debugging Karmada installation with the host cluster.

Next we will create clusters and join Karmada.