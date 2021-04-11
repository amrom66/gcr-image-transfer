#!/bin/bash

file="images"

if [ -f "$file" ]
then
  echo "$file found."

  while IFS='=' read -r key value
  do
    docker pull ${key}
    docker tag ${key} ghcr.io/linjinbao/${value}
    docker rmi ${key}
    docker push ghcr.io/linjinbao/${value}
  done < "$file"

else
  echo "$file not found."
fi
