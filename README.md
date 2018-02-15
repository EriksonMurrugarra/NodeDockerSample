# NodeDockerSample

Ejemplo de una aplicacion en NodeJS sencilla con su respectivo Dockerfile para construir un docker container.

## Running Locally

### 1. Build

> docker build -t eriksonmurrugarra/hello-server .

### 2. Run

> docker run --rm -p "3000:3000" --name hello-server-app hello-server

### 3. push
> docker push eriksonmurrugarra/hello-server
 
### 4. Pulling from docker and running

> docker run --rm -p "3000:3000" --name hello-server-app eriksonmurrugarra/hello-server

## Running on Kubernetes

### 1. Creating the pod

> kubectl create -f pod-hello-server-app.yml

### 2. Useful commands

#### get informationabout all running pods
> kubectl get pod        

#### describe one pod
> kubectl describe pod <pod>

#### Expose the port of a pod(Creates a new service)
> kubectl expose pod <pod> --port=PORT --name=NAME
> kubectl expose pod <pod> --type=NodePort --name=NAME

#### Port forward the exposed pod port to local machine
> kubectl port-forward <pod> 8080

#### Attach to the pod
> kubectl attach <pod> -i

#### Execute a command on the pod (use -c to refer to a specific container)
> kubectl exec <pod> -- command

#### Add a new label to a pod
> kubectl label pods <pod> mylabel=myvalue

#### Run a shell in a pod - Useful for debugging
> kubectl run -i -tty busybox--image=busybox --restart=Never -- sh

#### Get Service
> kubectl get service


## Minikube

### Start

> minikube start

### Delete

> minikube delete

### Get Endpoint for Service

> minikube service <service> --url
 




