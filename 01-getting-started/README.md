This folder contains a custom chart created by helm cli.

```shell
helm create mychart
```

Run the following command to debug helm charts.

```shell
helm install --dry-run --debug my-release ./mychart 

install.go:178: [debug] Original chart version: ""
install.go:195: [debug] CHART PATH: /Users/yusufshakeel/Documents/yusuf-github/yusufshakeel/helm-project/01-getting-started/mychart

NAME: my-release
LAST DEPLOYED: Tue Mar 21 08:05:51 2023
NAMESPACE: default
STATUS: pending-install
REVISION: 1
TEST SUITE: None
USER-SUPPLIED VALUES:
{}

COMPUTED VALUES:
{}

HOOKS:
MANIFEST:
---
# Source: mychart/templates/configmap.yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: mychart-configmap
data:
  chartName: 'mychart'
```