# Step 1 - Start Minikube

Change pgadmin port

```bash
sed -i 's/Listen 80/Listen 8081/' /etc/apache2/ports.conf
sed -i 's/*:80/*:8081/' /etc/apache2/sites-available/000-default.conf
sudo systemctl restart apache2
```{{execute}}

Minikube has been installed and configured in the environment. Check that it is properly installed, by running the minikube version command:

`minikube version`{{execute}}

Start the cluster, by running the minikube start command:

`minikube start --wait=false`{{execute}}

Enable ingress addon

```bash
minikube addons enable ingress
```{{execute}}

Great! You now have a running Kubernetes cluster in your online terminal. Minikube started a virtual machine for you, and a Kubernetes cluster is now running in that VM.
