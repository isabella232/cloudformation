# ethvault/cloudformation

Useful CloudFormation templates for deploying EthVault infrastructure.

## site.template.json

This is for deploying a static website. It creates a bucket, a CDN distribution, an ACM certificate,
and an IAM user for deploying to the bucket. Any other user is not allowed to deploy to the bucket, and only the CloudFront user and the root account can manage the bucket. This is used
in deploying demo websites as well as the main [https://app.ethvault.dev](https://app.ethvault.dev).
