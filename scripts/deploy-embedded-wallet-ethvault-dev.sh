#!/bin/bash

aws cloudformation update-stack --region us-east-1 \
    --stack-name embedded-wallet \
    --template-body file://site.template.json \
    --parameters file://scripts/deploy-embedded-wallet-ethvault-dev.parameters.json \
    --capabilities CAPABILITY_IAM
