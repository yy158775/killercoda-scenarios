Karmada is a Kubernetes management system that enables you to run your applications across multiple Kubernetes clusters and clouds.

In the first place,We should use karmadactl to install karmada in a Kubernetes cluster.

karmadactl is a command tool which controls a Kubernetes Cluster Federation.

Download the karmadactl from release page:

```
wget https://github.com/karmada-io/karmada/releases/download/v1.2.1/karmadactl-linux-amd64.tgz
tar -zxvf karmadactl-linux-amd64.tgz
```{{exec}}

Then

`export PATH=$PATH:/root/`{{exec}}

Check that karmadactl is configured to talk to your cluster, by running the kubectl version command:

`karmadactl version`{{exec}}

Begin to install karmada in kubernetes cluster.

`karmadactl init`{{exec}}

If you see:
```bash
------------------------------------------------------------------------------------------------------
 █████   ████   █████████   ███████████   ██████   ██████   █████████   ██████████     █████████
░░███   ███░   ███░░░░░███ ░░███░░░░░███ ░░██████ ██████   ███░░░░░███ ░░███░░░░███   ███░░░░░███
 ░███  ███    ░███    ░███  ░███    ░███  ░███░█████░███  ░███    ░███  ░███   ░░███ ░███    ░███
 ░███████     ░███████████  ░██████████   ░███░░███ ░███  ░███████████  ░███    ░███ ░███████████
 ░███░░███    ░███░░░░░███  ░███░░░░░███  ░███ ░░░  ░███  ░███░░░░░███  ░███    ░███ ░███░░░░░███
 ░███ ░░███   ░███    ░███  ░███    ░███  ░███      ░███  ░███    ░███  ░███    ███  ░███    ░███
 █████ ░░████ █████   █████ █████   █████ █████     █████ █████   █████ ██████████   █████   █████
░░░░░   ░░░░ ░░░░░   ░░░░░ ░░░░░   ░░░░░ ░░░░░     ░░░░░ ░░░░░   ░░░░░ ░░░░░░░░░░   ░░░░░   ░░░░░
------------------------------------------------------------------------------------------------------
Karmada is installed successfully.

Register Kubernetes cluster to Karmada control plane.
```
This means karmada is installed successfully.

The components of Karmada are installed in karmada-system namespace by default, you can get them by:

`kubectl get deployments -n karmada-system`{{exec}}

You might get similar output as follows:
```
NAME                           READY   UP-TO-DATE   AVAILABLE   AGE
karmada-aggregated-apiserver   1/1     1            1           102s
karmada-apiserver              1/1     1            1           2m34s
karmada-controller-manager     1/1     1            1           116s
karmada-scheduler              1/1     1            1           119s
karmada-webhook                1/1     1            1           113s
kube-controller-manager        1/1     1            1           2m3s
```