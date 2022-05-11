## Minikube  dashboard
Enable the dashboard using Minikube with the command 

```bash
minikube addons enable dashboard
```{{execute}}

Make the Kubernetes Dashboard available by deploying the following YAML definition. This should only be used on Katacoda.

```bash
kubectl apply -f katacoda/kubernetes-dashboard.yaml
```{{execute}}

The Kubernetes dashboard allows you to view your applications in a UI. In this deployment, the dashboard has been made available on port 30000 but may take a while to start.

To see the progress of the Dashboard starting, check the Pods within the kube-system namespace using 

```bash
kubectl get pods -n kubernetes-dashboard
```{{execute}}

Once running, go to Dashboard tab
