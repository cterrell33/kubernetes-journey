#!/bin/bash -e 

aws eks update-kubeconfig --name cmoloot-eks-cluster

#helm install ansible-awx-operator awx-operator/awx-operator -n awx --create-namespace

# create a for loop that loops through list of manifest file and applies each
# determine where this will be ran from 

for f in ../manifest/*-define.yaml; do
printf "$f"
kubectl apply -f ../manifest/"$f"
done

#Expose Service
sleep 90; kubectl expose deployment ansible-awx-web --name ansible-awx-web-svc --type NodePort -n awx

kubectl -n awx get all 