Now we can try to propagate a deployment by Karmada.
1.Create nginx deployment in Karmada
`wget https://github.com/karmada-io/karmada/blob/master/samples/nginx/deployment.yaml`{{exec}}

`cat deployment.yaml`{{exec}}

Karmada uses Kubernetes Native API definition for federated resource template, to make it easy to integrate with existing tools that already adopt on Kubernetes.

`kubectl create -f samples/nginx/deployment.yaml`{{exec}}

2.Create PropagationPolicy that will propagate nginx to member cluster
`wget https://github.com/karmada-io/karmada/blob/master/samples/nginx/propagationpolicy.yaml`{{exec}}
`cat propagationpolicy.yaml`{{exec}}

Karmada offers a standalone Propagation(placement) Policy API to define multi-cluster scheduling and spreading requirements.

spec.resourceSelectors used to select resources.

spec.placement represents the rule for select clusters to propagate resources.

spec.placement.clusterAffinity represents scheduling restrictions to a certain set of clusters.

spec.placement.replicaScheduling represents the scheduling policy on dealing with the number of replicas when propagating resources that have replicas in spec (e.g. deployments, statefulsets) to member clusters.


`kubectl create -f samples/nginx/propagationpolicy.yaml`{{exec}}

3.Check the deployment status from Karmada

`kubectl get deployment`{{exec}}