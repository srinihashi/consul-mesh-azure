# Connecting to your AKS Cluser

## Retrieve your Azure subscription ID
```
$ az login

$ az account list
```

## Set your subscription id
```
$ export SUBSCRIPTION_ID=[your-subscription-id]

$ az account set --subscription ${SUBSCRIPTION_ID}
```

## Download and configure the Kubernetes (AKS) credentials
```
$ export AKS_RESOURCE_GROUP=$(terraform output -raw resource_group_name)
$ export AKS_CLUSTER_NAME=$(terraform output -raw aks_cluster_name)
$ az aks get-credentials --resource-group ${AKS_RESOURCE_GROUP} --name ${AKS_CLUSTER_NAME}
```

## Test access to your AKS Cluster
```
$ kubectl get nodes
```
