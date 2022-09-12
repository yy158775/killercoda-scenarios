#Debug
```
go install github.com/go-delve/delve/cmd/dlv@latest
cp go/bin/dlv ~
export PATH=$PATH:/root/
```{{exec}}


```
mkdir /home/runner/work/karmada -p
cd /home/runner/work/karmada
git clone https://github.com/karmada-io/karmada.git
cd ~
```{{exec}}

```
export PATH=$PATH:/root/
dlv exec karmadactl init
```{{exec}}

```
b InitKarmadaResources
```{{exec}}

```
tcpdump -i flannel.1 port 5443 and host 192.168.1.5
```{{exec}}

```
tcpdump -i flannel.1 port 5443 and host 192.168.1.0
```{{exec}}

```
kubectl create ns test --kubeconfig=/etc/karmada/karmada-apiserver.config
```{{exec}}

```
kubectl --kubeconfig=$HOME/.kube/config
```{{copy}}

```
kubectl describe -n karmada-system svc  karmada-apiserver
```{{exec}}

```
kubectl get --raw /api/v1/namespaces --kubeconfig=/etc/karmada/karmada-apiserver.config
```{{exec}}

```
kubectl get pods -A -o wide --kubeconfig=/etc/karmada/karmada.apiserver
```