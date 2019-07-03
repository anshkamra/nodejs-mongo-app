# nodejs-mongo-app
get/create users in mongo

# Pre-requisites:
A Kubernetes Cluster

# Steps:
1. Connect K8s cluster to a terminal.
2. Execute installation.sh script, it will do follwoing tasks:
   Create a deployment for MongoDB (authentication password must be stored in K8S Secret) using Persistent Volume with 1 Replica
   Create Ingress Controller for Cluster.
3. kubectl apply -f nodejs-secret.yaml
4. kubectl apply -f nodejs.yaml
