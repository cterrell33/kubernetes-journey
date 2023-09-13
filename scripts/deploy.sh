#!/bin/bash -e 

# create a for loop that loops through list of manifest file and applies each
# determine where this will be ran from 

for f in ../manifest/*-define.yaml; do
printf "$f"
kubectl apply -f ../manifest/"$f"
done

if "$1=ubuntu" then;
sudo apt update
sudo apt install git build-essential curl jq  -y
else
sudo yum -y install epel-release
sudo yum group install "Development Tools"
sudo yum install curl jq
fi 

git clone https://github.com/ansible/awx-operator.git
export NAMESPACE=awx
kubectl create ns ${NAMESPACE}

kubectl config set-context --current --namespace=$NAMESPACE 
cd awx-operator/
RELEASE_TAG=`curl -s https://api.github.com/repos/ansible/awx-operator/releases/latest | grep tag_name | cut -d '"' -f 4`
echo $RELEASE_TAG
git checkout $RELEASE_TAG

export NAMESPACE=awx
make deploy