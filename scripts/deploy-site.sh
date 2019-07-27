#!/bin/bash

STACK_NAME=$1

aws cloudformation update-stack --region us-east-1 \
    --stack-name "${STACK_NAME}" \
    --template-body "file://templates/site.template.json" \
    --parameters "file://parameters/${STACK_NAME}.parameters.json" \
    --capabilities CAPABILITY_IAM
