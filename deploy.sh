#!/bin/bash

set -e

DIRS=("infra" "deployment")

for dir in ${DIRS[@]};
do
    echo "-> Applying '$dir' terraform"
    pushd $dir
    terraform init
    terraform apply -auto-approve
    popd
done

echo '-> Environment created'
