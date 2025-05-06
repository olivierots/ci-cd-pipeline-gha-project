`A hands-on sandbox for building a **CI/CD pipeline** that uses:`

- **GitHub Actions** for all **Continuous Integration (CI)** tasks: linting, validation, security scanning—on Terraform modules  
- **Harness** for **Continuous Deployment (CD)** to deploy the infrastrucure.
---
**Terraform Modules:**
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
---
* Module: `simple_sqs_queue`  
  **What it does:**  
> - Provisions a standard AWS SQS queue with configurable visibility timeout and message retention.  
> - Exposes the queue’s URL and ARN as outputs.  
> - Covered by the AWS free-tier (up to 1M requests/month), ideal for simple async/deferred workflows.  