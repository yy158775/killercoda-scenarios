```
wget https://github.com/karmada-io/karmada/releases/download/v1.2.1/karmadactl-linux-amd64.tgz
tar -zxvf karmadactl-linux-amd64.tgz
export PATH=$PATH:/root/
```{{exec}}

`karmadactl init --kubeconfig=$HOME/.kube/config`{{exec}}

`karmadactl deinit --kubeconfig=$HOME/.kube/config`{{exec}}