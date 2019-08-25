#!/bin/bash

curl "http://localhost:4741/addresses/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "address": {
      "street_1": "'"${STREET}"'"
    }
  }'

echo
