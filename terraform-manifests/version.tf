# Terraform Block
terraform {
  required_version = "~> 0.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}


# Adding Backend as S3 for Remote State Storage with State Locking
  backend "s3" {
    bucket = "terracode-2021"
    key    = "dev/terraform.tfstate"
    region = "us-east-2"  

    # For State Locking
    dynamodb_table = "terraform"
  }