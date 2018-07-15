#!/bin/bash 

#easy_install --upgrade pip
#easy_install virtualenv
dir_name="myenv"
env_name="env1"
mkdir $dir_name
virtualenv ./$dir_name/$env_name
cp module_list.txt ./$dir_name/$env_name
cd $dir_name/$env_name
source bin/activate
file="./module_list.txt"
while IFS= read -r line
do
pip install $line
done <"$file"
source bin/activate
