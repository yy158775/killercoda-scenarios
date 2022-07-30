#!/bin/bash

kubectl version
ret=$?
if [[ ${ret} -ne 0 ]]; then
  echo "Failed to get kubernetes version!"
  exit 1
fi

kubectl get nodes
ret=$?
if [[ ${ret} -ne 0 ]]; then
  echo "Failed to get kubernetes nodes!"
  exit 1
fi
