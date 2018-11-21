#!/usr/bin/env bash
kubectl apply -f gp2-storage-class.yaml
kubectl get storageclass
kubectl patch storageclass gp2 -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'


kubectl apply -n xebialabs -f xlrelease-configmap.yaml
kubectl describe  cm -n xebialabs xlrelease-config

kubectl apply -n xebialabs -f xlrelease-storage.yaml
kubectl get pvc -n xebialabs
kubectl describe pvc xlr-pv-claim-repository -n xebialabs


kubectl apply -n xebialabs -f xlrelease-deployment.yaml
kubectl describe deployment  xlrelease-deployment -n xebialabs
kubectl get pods -n xebialabs

kubectl apply -n xebialabs -f xlrelease-service.yaml
