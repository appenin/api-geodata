#! /bin/bash

source ../../.env

FOLDEREXTRACTION='./extractedFolder'
COMPRESSEDFILE="tiles_filosofi_appenin.7z"
SHPFILE="tiles_filosofi_appenin"
SQLFILE="tiles_filosofi_appenin.sql"
FOLDER_SRC="tiles_filosofi_appenin"
UPDATE_FILE="last_update.csv"

psql -q ${DATABASE_URL} < 0_check_update_table.sql

DATE=$(date -r ../../"${STORAGE_SERVER}"/"${FOLDER_DEST}"/"${COMPRESSEDFILE}" +%F)

DATASET_NEEDS_UPDATE=$(psql ${DATABASE_URL} -t -c "SELECT EXISTS (SELECT 1 FROM last_update WHERE file = '"${COMPRESSEDFILE}"' AND last_update = to_date('"${DATE}"', 'yyyy-mm-dd'));" | tr -d ' ')

if [[ "${DATASET_NEEDS_UPDATE}" = 'f' ]]; then
  echo "file,last_update" >> "${UPDATE_FILE}"
  echo ""${COMPRESSEDFILE}",$DATE" >> "${UPDATE_FILE}"
  psql "${DATABASE_URL}" -c "\COPY last_update FROM "${UPDATE_FILE}" DELIMITER ',' CSV HEADER;"
  rm -r "${UPDATE_FILE}"

  7zr e ../../"${STORAGE_SERVER}"/"${FOLDER_DEST}"/"${COMPRESSEDFILE}" -aoa -o"${FOLDEREXTRACTION}"
  psql "${DATABASE_URL}" < 1_remove_table_if_exists.sql
  cd "${FOLDEREXTRACTION}"
  shp2pgsql -s 2154:4326 -d "${SHPFILE}" > "${SQLFILE}"
  psql "${DATABASE_URL}" < "${SQLFILE}"
  cd ..
  psql "${DATABASE_URL}" < 2_create_indexes.sql
  psql "${DATABASE_URL}" < 3_rename_columns.sql
  rm -r "${FOLDEREXTRACTION}" "${COMPRESSEDFILE}"

  echo "Data was out of date and has been updated."

else
  echo "Data : "${COMPRESSEDFILE}" is already up to date in PG."
fi

