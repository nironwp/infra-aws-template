# AWS Infrastructure Solution using Terraform

This repository provides Terraform templates for creating an AWS infrastructure solution that includes a Virtual Private Cloud (VPC), subnet, security group, network interface, and instance.

## Overview

The code in this repository is designed to make it easy to create and manage your AWS infrastructure using Terraform. The infrastructure solution includes all of the necessary components for running a typical application, including a VPC, subnet, security group, network interface, and instance. The templates provided can be easily customized to fit your specific needs.

## Requirements

Before getting started with the templates provided in this repository, you'll need to have the following installed:

- The AWS CLI, which can be downloaded from [here](https://aws.amazon.com/cli/).
- The Terraform CLI, which can be downloaded from [here](https://www.terraform.io/downloads.html).

Additionally, you'll need to have an AWS account and have your credentials set up with the AWS CLI. If you need help with this, check out the [AWS CLI Configuration Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html).

## Getting Started

To get started with this AWS infrastructure solution using Terraform, follow these steps:

1. Create an S3 bucket in the us-east-1 region with versioning enabled, and name it `terraform-storage-acc`. You can do this using the AWS CLI with the following command:

```bash
    aws s3api create-bucket --bucket terraform-storage-acc --region us-east-1 --create-bucket-configuration LocationConstraint=us-east-1 --versioning-configuration Status=Enabled
```

2. Clone this repository to your local machine:

```bash
    https://github.com/nironwp/infra-aws-template.git
```

3. Navigate to the cloned repository on your local machine:

```bash
    cd infra-aws-template
```

4. Initialize the Terraform working directory:

```bash
    terraform init
```

5. Review the plan:

```bash
    terraform plan --out=plan.out
```

6. Apply the changes:

```bash
    terraform apply plan.out
```


That's it! Once the apply command has finished executing, you'll have a fully functional AWS infrastructure solution using Terraform.
