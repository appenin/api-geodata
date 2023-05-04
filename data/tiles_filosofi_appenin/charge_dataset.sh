#! /bin/bash

source ../../.env

BASE_URL="https://www.data.gouv.fr/fr/datasets/r/f359a394-8ffd-43d2-890d-614db4eb7564"
COMPRESSEDFILE="tiles_filosofi_appenin.7z"
FOLDER_DEST="tiles_filosofi_appenin"

if [ ! -d ../../"${STORAGE_SERVER}"/"${FOLDER_DEST}" ]; then
  mkdir ../../"${STORAGE_SERVER}"/"${FOLDER_DEST}"
fi

curl -o ../../"${STORAGE_SERVER}"/"${FOLDER_DEST}"/"${COMPRESSEDFILE}" -L "${BASE_URL}"

. dump.sh
