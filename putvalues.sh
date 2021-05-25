#!bin/bash

## Author: Mayank Rathore
## Last revised 25/05/2021

echo "Starting to run putvalues.sh ..."

env_var=`cat properties/dev.properties | grep "envname" | cut -d'=' -f2`
hostname_var=`cat properties/dev.properties | grep "hostname" | cut -d'=' -f2`

echo "Below variables were read from the properties file.."
echo "env_var: $env_var"
echo "hostname_var: $hostname_var"


sed -i "s/ENV_NAME/$env_var/g" "src/main.txt"
sed -i "s/ENV_HOSTNAME/$hostname_var/g" "src/main.txt"


echo "\nThis is the content of main.txt file after running the script.."
echo "\n"

cat src/main.txt
