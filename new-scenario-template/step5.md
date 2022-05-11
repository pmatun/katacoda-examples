# Create geodata namespace and resources

Create geodata namespace.

`kubectl create -f geodata/namespace.yml`{{execute}}

First we need to create config and secret maps that hold rest-api configuration parameteres.

```bash
kubectl apply -f geodata/geodata-config.yml
kubectl apply -f geodata/geodata-secret.yml
```{{execute}}

Now it is time to create geodata-rest deployment and service:

```bash
kubectl apply -f geodata/rest/geodata-rest-deployment.yml
kubectl apply -f geodata/rest/geodata-rest-service.yml
```{{execute}}

Deploy geodata-web application

```bash
kubectl apply -f geodata/web/geodata-web-deployment.yml
kubectl apply -f geodata/web/geodata-web-service.yml
```{{execute}}

Check if everything is deployed successfully in geodata namespace

```bash
kubectl get all -n geodata
```{{execute}}


