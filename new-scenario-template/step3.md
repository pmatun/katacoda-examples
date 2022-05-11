## Prepare postgres data and storage

First we need to create config and secret maps:
```bash
kubectl apply -f postgres/postgres-config.yml
kubectl apply -f postgres/postgres-secret.yml
```{{execute}}

First we need to create config and secret maps:
```bash
kubectl get cm
kubectl get secret
```{{execute}}

Now persistent volume:

```bash
kubectl create -f postgres/postgres-pv.yml
kubectl create -f postgres/postgres-pvc.yml
```{{execute}}

Check if all went well by issuing:

```bash
kubectl get pvc
```{{execute}}

You should see the similar output:

```bash
NAME                STATUS   VOLUME        CAPACITY   ACCESS MODES   STORAGECLASS   AGE
postgres-pv-claim   Bound    postgres-pv   5Gi        RWX            manual         35s
```
