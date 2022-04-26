## 1. Deploy postgres

First we need to create config and secret maps:
```bash
kubectl apply -f postgres/postgres-config.yml
kubectl apply -f postgres/postgres-secret.yml
```{{execute}}
Now persistent volume:

```bash
kubectl create -f postgres/postgres-sv.yml
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

Now lets deploy postgres to kubernetes

```bash
kubectl apply -f postgres/postgres-deployment.yml
```{{execute}}

We need to expose database to others as service, so execue the following command:

```bash
kubectl apply -f postgres/postgres-service.yml
```{{execute}}

To chek if all is working well, execute:

```bash
kubectl get service postgres-service
```{{execute}}

You shoud see something like:

```
NAME               TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
postgres-service   ClusterIP   10.106.77.188   <none>        5432/TCP   7m25s
```

We can expose this service, to the outside world by using port forwarding:

```bash
kubectl port-forward service/postgres-service 5435:5432
```{{execute}}

**Now startup dbeaver and connect to databse on localhost:5435**

Once all is working as expected kill port-forwarding by pressing ^C inside the terminal.
