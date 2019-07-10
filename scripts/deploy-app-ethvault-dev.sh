#!/bin/bash

aws cloudformation update-stack --region us-east-1 \
    --stack-name app-ethvault-dev-stack \
    --template-body file://site.template.json \
    --parameters file://scripts/deploy-app-ethvault-dev.parameters.json \
    --capabilities CAPABILITY_IAM