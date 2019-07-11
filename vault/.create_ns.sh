#!/bin/bash -x
if [ "$#" -ne 1 ]; then
  echo "Error: Too few arguments."
  echo "Usage: python $0 <vault-namespace-name>" >&2
  exit 1
fi

namespace_name=$1
curl \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    http://127.0.0.1:8200/v1/sys/namespaces/$namespace_name
