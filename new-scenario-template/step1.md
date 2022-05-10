# Step 1 - Start Minikube

Minikube has been installed and configured in the environment. Check that it is properly installed, by running the minikube version command:

`minikube version`{{execute}}

Start the cluster, by running the minikube start command:

`minikube start --wait=false`{{execute}}

Enable ingress addon

```bash
minikube addons enable ingress
```{{execute}}

Great! You now have a running Kubernetes cluster in your online terminal. Minikube started a virtual machine for you, and a Kubernetes cluster is now running in that VM.

## Minikube  dashboard
Enable the dashboard using Minikube with the command 

```bash
minikube addons enable dashboard
```{{execute}}

Make the Kubernetes Dashboard available by deploying the following YAML definition. This should only be used on Katacoda.

```bash
kubectl apply -f kubernetes-dashboard.yaml
```{{execute}}

The Kubernetes dashboard allows you to view your applications in a UI. In this deployment, the dashboard has been made available on port 30000 but may take a while to start.

To see the progress of the Dashboard starting, watch the Pods within the kube-system namespace using 

```bash
kubectl get pods -n kubernetes-dashboard -w
```{{execute}}

Once running, go to Dashboard tab
