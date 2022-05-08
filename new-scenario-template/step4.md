# Expose geodata app 

Expose application with NodePort

```bash
kubectl expose deployment geodata-web-deployment --type=NodePort -n geodata
```{{execute}}

Open in browser http://<node_ip>:<node_port>/

Fetch node ip with

```bash
minikube ip
```{{execute}}

Expose geodata app with LoadBalancer

```bash
kubectl expose deployment geodata-web-deployment --type=LoadBalancer -n geodata
```{{execute}}

Create ingress and expose geodata app
```bash
kubectl apply -f geodata/ingress.yml
```{{execute}}

Executing the command above will create, in geodata namespace, an ingress service that exposes geodata-web application on url: geodata.local-minikube.io on port 80.
