# Step 1 - Start Minikube

Install minikube in the environment. 

```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```{{execute}}

Check that it is properly installed, by running the minikube version command:

`minikube version`{{execute}}

Start the cluster, by running the minikube start command:

`minikube start --wait=false`{{execute}}

Enable ingress addon

```bash
minikube addons enable ingress
```{{execute}}

Great! You now have a running Kubernetes cluster in your online terminal. Minikube started a virtual machine for you, and a Kubernetes cluster is now running in that VM.
