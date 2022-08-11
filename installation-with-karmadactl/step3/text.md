Check contexts of kubeconfig.
`kubectl config viw --kubeconfig /etc/karmada/karmada-apiserver.config`{{exec}}

You can find now we have two contexts karmada-apiserver and karmada-host.
karmada-apiserver is generated after we install the karmada in the kubernetes cluster.

Check the detailed information of the config.
`kubectl config view --kubeconfig $KUBECONFIG`{{exec}}

You can find we have two clusters