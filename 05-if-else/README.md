This folder contains a custom chart created by helm cli.

```shell
helm create mychart
```


Dry run

```shell
helm install --dry-run --debug my-release ./mychart

install.go:178: [debug] Original chart version: ""
install.go:195: [debug] CHART PATH: /Users/yusufshakeel/Documents/yusuf-github/yusufshakeel/helm-project/05-if-else/mychart

NAME: my-release
LAST DEPLOYED: Thu Mar 23 10:49:32 2023
NAMESPACE: default
STATUS: pending-install
REVISION: 1
TEST SUITE: None
USER-SUPPLIED VALUES:
{}

COMPUTED VALUES:
app:
  containerPort: 9000
  image: https://example.com/docker-images/some-image-name
autoscaling:
  enabled: false
location: us-east4
replicaCount: 3

HOOKS:
MANIFEST:
---
# Source: mychart/templates/configmap.yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: my-release-configmap
data:
  location: "us-east4"
  createdAt: "23230-03-03T30:230:100.909Z"
  environmentName: dev
  message: "Hello, World!"
---
# Source: mychart/templates/deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mychart-deployment
  labels:
    app: mychart
    release: my-release-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: mychart
  template:
    metadata:
      labels:
        app: mychart
    spec:
      containers:
        - name: mychart-deployment
          image: https://example.com/docker-images/some-image-name
          ports:
            - name: http
              protocol: TCP
              containerPort: 9000
```