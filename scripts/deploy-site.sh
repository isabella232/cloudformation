#!/bin/bash

aws cloudformation update-stack --region us-east-1 \
    --stack-name ethvault-xyz \
    --template-body file://templates/site.template.json \
    --parameters file://parameters/deploy-site.parameters.json \
    --capabilities CAPABILITY_IAM
