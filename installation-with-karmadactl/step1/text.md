Now you got a two node Kubernetes cluster.

Let's check the cluster version:

`kubectl version`{{exec}}

You might get the similar output as follows:

```bash
Client Version: version.Info{Major:"1", Minor:"24", GitVersion:"v1.24.0", GitCommit:"4ce5a8954017644c5420bae81d72b09b735c21f0", GitTreeState:"clean", BuildDate:"2022-05-03T13:46:05Z", GoVersion:"go1.18.1", Compiler:"gc", Platform:"linux/amd64"}
Kustomize Version: v4.5.4
Server Version: version.Info{Major:"1", Minor:"24", GitVersion:"v1.24.0", GitCommit:"4ce5a8954017644c5420bae81d72b09b735c21f0", GitTreeState:"clean", BuildDate:"2022-05-03T13:38:19Z", GoVersion:"go1.18.1", Compiler:"gc", Platform:"linux/amd64"}
```

Let's check the nodes:

`kubectl get nodes`{{exec}}

You might get the similar output as follows:
```bash
NAME           STATUS   ROLES           AGE   VERSION
controlplane   Ready    control-plane   82d   v1.24.0
node01         Ready    <none>          82d   v1.24.0
```

Everything looks fine, let's start the journey!