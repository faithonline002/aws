#!/bin/bash

response=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)

if [ "$response" = "200" ]; then
  exit 0
else
  exit 1
fi
