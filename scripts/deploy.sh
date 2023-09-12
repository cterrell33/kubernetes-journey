#!/bin/bash -e 

deployment=deploy-def
ingressctrl=nginx-ingress-controller-deploy

kubectl apply -f ../manifest/$ingressctrl.yaml