** ci-cd-pipeline-gha-project **
small project to play with github actions for CI and Harness for CD

* Module: `s3_bucket`
> **What it does:**  
> - Provisions a versioned, tagged S3 bucket with a configurable ACL (e.g. `private` or `public-read`).  
> - Exposes the bucket’s ARN and ID as outputs.  
> - Ideal for any Terraform code that needs a reusable, parameterized S3 bucket.
---

* Module: `ssm_parameter`
> **What it does:**  
> - Creates an AWS Systems Manager (SSM) Parameter Store entry of type `String`, `SecureString`, or `StringList`.  
> - Allows you to set a name, value, and map of tags.  
> - Returns the parameter’s ARN and name for downstream consumption.