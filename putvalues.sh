#!bin/bash

variable=`cat properties/dev.properties | grep "envname" | cut -d'=' -f2`

echo $variable

sed -i "s/ENV_NAME/$variable/g" "src/main.txt"

cat src/main.txt
