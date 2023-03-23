This folder contains a custom chart created by helm cli.

```shell
helm create mychart
```


Dry run

```shell
helm install --dry-run --debug my-release ./mychart

install.go:178: [debug] Original chart version: ""
install.go:195: [debug] CHART PATH: /Users/yusufshakeel/Documents/yusuf-github/yusufshakeel/helm-project/04-template/mychart

NAME: my-release
LAST DEPLOYED: Tue Mar 21 09:03:21 2023
NAMESPACE: default
STATUS: pending-install
REVISION: 1
TEST SUITE: None
USER-SUPPLIED VALUES:
{}

COMPUTED VALUES:
location: us-east4

HOOKS:
MANIFEST:
---
# Source: mychart/templates/configmap.yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: my-release-configmap
  labels:
    app: mychart
data:
  location: "us-east4"
  createdAt: "21210-03-03T30:210:90.588Z"
  environmentName: dev
```