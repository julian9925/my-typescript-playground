#!/bin/bash

# Exit if no arguments were provided
if [ $# -eq 0 ]; then
  echo "Please provide the project name as an argument."
  exit 1
fi

project_name=$1

mkdir $project_name
cd $project_name
npm init -y
npm install --save-dev typescript @types/node
npx tsc --init
mkdir src