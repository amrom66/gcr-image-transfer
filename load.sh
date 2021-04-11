#!/bin/bash

file="images"

if [ -f "$file" ]
then
  echo "$file found."

  while IFS='=' read -r key value
  do
    docker pull linjinbao66/${value}
    docker tag linjinbao66/${value} ${key}
    docker rmi linjinbao66/${value}
  done < "$file"

else
  echo "$file not found."
fi
