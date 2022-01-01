#!/bin/bash

set -euo pipefail

rg="arm-template-demo"
templateFile="./template/demo-template.json"
today=$(date "+%d-%b-%Y")
deploymentName="my-deployment-"$today

az group create \
  --name $rg \
  --location australiaeast

az deployment group create \
  --name "$deploymentName" \
  --resource-group $rg \
  --template-file $templateFile