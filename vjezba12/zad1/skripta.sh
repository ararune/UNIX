#!/bin/bash

while IFS=':' read -r username password uid gid fullname home shell
do
  if [ "$gid" = "101" ]; then
    echo "$username"
  fi
done < ~/materijali/etc-passwd > users101
