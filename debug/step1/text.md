```
wget https://github.com/yy158775/killercoda-scenarios/raw/main/debug/step1/apiserver.yaml
wget https://github.com/yy158775/killercoda-scenarios/raw/main/debug/step1/etcd-cert.yaml
```{{exec}}

```
wget https://github.com/yy158775/killercoda-scenarios/raw/main/debug/step1/etcd.yaml
wget https://github.com/yy158775/killercoda-scenarios/raw/main/debug/step1/karmada-apisever.config
wget https://github.com/yy158775/killercoda-scenarios/raw/main/debug/step1/karmada-cert.yaml

```{{exec}}

```
wget https://github.com/yy158775/killercoda-scenarios/raw/main/debug/step1/etcd-service.yaml
wget https://github.com/yy158775/killercoda-scenarios/raw/main/debug/step1/karmada-apiserver-service.yaml
```{{exec}}


```
kubectl apply -f etcd-cert.yaml
kubectl apply -f karmada-cert.yaml
```{{exec}}

```
kubectl apply -f etcd.yaml
kubectl apply -f apiserver.yaml
```{{exec}}

```
kubectl apply -f etcd-service.yaml
kubectl apply -f karmada-apiserver-service.yaml
```