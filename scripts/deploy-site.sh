#!/bin/bash

aws cloudformation update-stack --region us-east-1 \
    --stack-name ethvault-xyz \
    --template-body file://site.template.json \
    --parameters file://scripts/deploy-site.parameters.json \
    --capabilities CAPABILITY_IAM
