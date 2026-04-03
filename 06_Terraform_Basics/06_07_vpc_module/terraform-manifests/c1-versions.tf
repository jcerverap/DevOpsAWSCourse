terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"
    }
  }
# Remote Backend
  backend "s3" {
    bucket = "tfstate-dev-eu-central-1-krkgmr"  # Change to your S3 bucket name (id)
    key = "vpc/dev/terraform.tfstate" # Path within the bucket to store the state file (e.g., vpc/dev/terraform.tfstate)
    region = "eu-central-1"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  region = var.aws_region
}