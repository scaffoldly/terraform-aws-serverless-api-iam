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

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.33.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.access_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_role.cloudformation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.cloudformation_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_user.user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.assume_cloudformation_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [aws_iam_user_policy.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [aws_iam_policy_document.assume_cloudformation_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.cloudformation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.deployer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | The repository name for the Serverless API (role names are prefixed with this for service-level isololation of privileges) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deployer_access_key"></a> [deployer\_access\_key](#output\_deployer\_access\_key) | The AWS Access Key that can be used for deploys |
| <a name="output_deployer_secret_key"></a> [deployer\_secret\_key](#output\_deployer\_secret\_key) | The AWS Secret Key that can be used for deploys |
<!-- END_TF_DOCS -->
