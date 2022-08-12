Now we can deinit the karmada in the cluster.

`karmadactl deinit --kubeconfig ~/.kube/config`{{exec}}

We can see all components have disappeared.

`kubectl get deployments -n karmada-system`{{exec}}