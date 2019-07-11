#!/bin/bash

aws cloudformation update-stack --region us-east-1 \
    --stack-name wallet-ethvault-xyz \
    --template-body file://site.template.json \
    --parameters file://scripts/deploy-embedded-wallet.parameters.json \
    --capabilities CAPABILITY_IAM
