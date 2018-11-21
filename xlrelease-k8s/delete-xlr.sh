#!/usr/bin/env bash
kubectl delete deployment xlrelease-deployment  -n xebialabs
kubectl delete pvc xlr-pv-claim-repository  -n xebialabs

