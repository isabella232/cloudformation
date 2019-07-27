#!/bin/bash

aws cloudformation update-stack --region us-east-1 \
    --stack-name "${1}" \
    --template-body "file://templates/site.template.json" \
    --parameters "file://parameters/${1}.parameters.json" \
    --capabilities CAPABILITY_IAM
