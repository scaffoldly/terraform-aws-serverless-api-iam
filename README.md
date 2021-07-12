[![Maintained by Scaffoldly](https://img.shields.io/badge/maintained%20by-scaffoldly-blueviolet)](https://github.com/scaffoldly)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/scaffoldly/terraform-aws-serverless-api-iam)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.15.0-blue.svg)

## Description

Create IAM roles for a Serverless API:

- IAM Role for Serverless + CloudFormation
- Deployer IAM User for GitHub to invoke `serverless deploy` (Same privileges as the IAM Role for Serverless)
- Access Key and Secret Key for the Deployer IAM user

## Usage

```hcl
module "aws_iam" {
  source = "scaffoldly/serverless-api-iam/aws"

  repository_name = module.repository.name

  depends_on = [
    module.repository
  ]
}
```

<!-- BEGIN_TF_DOCS -->

## Requirements

## Providers

## Modules

## Resources

## Inputs

## Outputs

<!-- END_TF_DOCS -->
