#!/bin/bash

PORT=10080
HOST=localhost

if ns -z $HOST $PORT; then
  echo "Port $PORT is open on $HOST"
else
  echo "port $PORT is not open on $HOST"
  exit 1
fi