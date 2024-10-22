#!/bin/bash

PORT=10080
HOST=localhost

if lsof -i :$PORT; then
  echo "Port $PORT is already in use on $HOST. Skipping port-forward."
  exit 1
else
  echo "Port $PORT is not in use on $HOST. Proceeding with port-forward."
  exit 0
fi