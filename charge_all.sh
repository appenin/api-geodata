#! /bin/bash

BASEDIR=$(pwd)

for d in data/*/ ; do
    cd ${BASEDIR}/${d} && ./charge_dataset.sh
done
