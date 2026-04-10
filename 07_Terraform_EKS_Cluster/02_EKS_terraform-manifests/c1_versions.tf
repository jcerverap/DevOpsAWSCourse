terraform {
  # Minimum Terraform CLI version required
  required_version = ">= 1.12.0"

  # Required providers and version constraints
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"
    }
  }

  # Remote backend configuration using S3 
  backend "s3" {
    bucket = "tfstate-dev-eu-central-1-2lb4d4"  # Change to your S3 bucket name (id)
    key = "eks/dev/terraform.tfstate" # Path within the bucket to store the state file (e.g., vpc/dev/terraform.tfstate)
    region = "eu-central-1"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  # AWS region to use for all resources (from variables)
  region = var.aws_region
}
