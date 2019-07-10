#!/bin/bash

CONTENT_SECURITY_POLICY="default-src 'none'; script-src 'self' www.google-analytics.com; style-src 'self' 'unsafe-inline' fonts.googleapis.com; img-src 'self' data: www.google-analytics.com; font-src 'self' data: fonts.gstatic.com; connect-src api.ethvault.dev; frame-src https:; frame-ancestors 'none'; form-action 'self'; block-all-mixed-content; sandbox allow-scripts allow-top-navigation; base-uri 'none'; manifest-src 'self'; referrer no-referrer"
X_FRAME_OPTIONS="deny"
SITE_DOMAIN_NAME="app.ethvault.dev"

aws cloudformation update-stack --region us-east-1 \
    --stack-name app-ethvault-dev-stack \
    --template-body file://site.template.json \
    --parameters file://scripts/deploy-app-ethvault-dev.parameters.json \
    --capabilities CAPABILITY_IAM
