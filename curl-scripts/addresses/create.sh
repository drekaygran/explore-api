#!/bin/bash

curl "http://localhost:4741/addresses" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "address": {
      "zip_code": "'"${ZIP}"'",
      "place_id": "'"${PLACE}"'"
    }
  }'

echo
