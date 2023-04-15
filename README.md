## Setup Localhost
Clone the repo and install the dependencies.

```bash
git clone https://github.com/salak96/kubernet.git
```
```bash
npm install
```

To start the express server, run the following

```bash
  "scripts": {
    "dev": "nodemon ./index.js",
    "test": "mocha tests/*.js --exit"
  },
```

running with nodemon

```bash
node index.js
npm run dev
```

running testing with mocha

```bash
npm run test
```

## docker
```
docker build -t lambang10/node-web-app .
docker push lambang10/node-web-app:latest
```

# memastikan bahwa hasil docker nya berjalan
docker run -p 3023:3000 -d lambang10/node-web-app:latest



## MINIKUBE
```
minikube status
minikube start

```

## RUNNING YAML 

```
kubectl apply -f new.yaml
``` 

## Cek Pods
```
kubectl get po

NAME                              READY   STATUS    RESTARTS   AGE
app-javascript-5857667df6-mpd6r   1/1     Running   0          100s

```

## Cek Service
```
kubectl get svc

NAME             TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
app-javascript   NodePort    10.104.182.55   <none>        3000:30001/TCP   104s
kubernetes       ClusterIP   10.96.0.1       <none>        443/TCP          103m
```

## Jalankan Minikube
``` 
minikube service app-javascript

|-----------|----------------|-------------|---------------------------|
| NAMESPACE |      NAME      | TARGET PORT |            URL            |
|-----------|----------------|-------------|---------------------------|
| default   | app-javascript |        3000 | http://192.168.49.2:30001 |
|-----------|----------------|-------------|---------------------------|
🏃  Starting tunnel for service app-javascript.
|-----------|----------------|-------------|------------------------|
| NAMESPACE |      NAME      | TARGET PORT |          URL           |
|-----------|----------------|-------------|------------------------|
| default   | app-javascript |             | http://127.0.0.1:51590 |

```


# TAMPILAN POSTMAN
