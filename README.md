# ethvault/cloudformation

Useful CloudFormation templates for deploying Ethvault infrastructure.

## site.template.json

Deploys a static website. Creates an S3 bucket, a CloudFront distribution, an ACM certificate,
an IAM user for deploying to the bucket, credentials for CI deployments, and Lambda@Edge for security headers.

Only the single IAM user created by the template is allowed to put objects in the bucket, 
and only the CloudFront user and the root account can manage the bucket.

Also adds headers for security via Lambda@Edge. The content security policy and x-frame-options headers can be specified as parameters to the template.
