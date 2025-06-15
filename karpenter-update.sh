#!/bin/bash

kubectl apply -f karpenter.yaml -n karpenter
kubectl rollout restart deployment/karpenter -n karpenter