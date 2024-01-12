#!/bin/sh

ExternalIP=$(kubectl get nodes -o jsonpath='{.items[*].status.addresses[1].address}')
svcport=$(kubectl -n awx get svc ansible-awx-web-svc -o jsonpath='{.spec.ports[0].nodePort}')
url=http://$ExternalIP:$svcport


printf "$url\n"
curl -k $url