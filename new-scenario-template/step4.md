## Deploy postgres to kubernetes

```bash
kubectl apply -f postgres/postgres-deployment.yml
```{{execute}}

Check if pod is ready

```bash
kubectl get pods
```{{execute}}

We need to expose database to others as service, so execute the following command:

```bash
kubectl apply -f postgres/postgres-service.yml
```{{execute}}

To check if everything is working well, execute:

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

Now open pgadmin in pgAdmin tab
  
Login credentials are:
  
  User: admin@domain.com
  
  Password: password
  
Connect to databse on localhost:5435
  
  Check credentials from ConfigMap and Secret
  
When you are done, kill port-forwarding by pressing ^C inside the terminal.
