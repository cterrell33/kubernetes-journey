#!/bin/bash -e 

# create a for loop that loops through list of manifest file and applies each
# determine where this will be ran from 

for f in ../manifest/*-define.yaml; do
printf "$f"
kubectl apply -f ../manifest/"$f"

done
