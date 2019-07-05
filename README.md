# cfn

Useful CloudFormation templates.

# site.template.json

This is for deploying a static website. It creates a bucket, a CDN distribution, an ACM certificate,
and an IAM user for deploying to the bucket. Any other user is not allowed to deploy to the bucket. This is used
in deploying demo websites as well as the main [https://app.ethvault.dev](https://app.ethvault.dev).
