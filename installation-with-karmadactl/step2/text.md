
Download the karmadactl from release page:

`wget https://github.com/karmada-io/karmada/releases/download/v1.2.1/karmadactl-linux-amd64.tgz`{{exec}}
`

Then

`tar -zxvf karmadactl-linux-amd64.tgz`{{exec}}

Then

`export PATH=$PATH:/root/`{{exec}}

Then

`karmadactl version`{{exec}}

Then

`karmadactl init`{{exec}}

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
