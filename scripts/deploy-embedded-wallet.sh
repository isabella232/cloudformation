#!/bin/bash

aws cloudformation update-stack --region us-east-1 \
    --stack-name wallet-ethvault-xyz \
    --template-body file://templates/site.template.json \
    --parameters file://parameters/deploy-embedded-wallet.parameters.json \
    --capabilities CAPABILITY_IAM
