# Terraform Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.58.0"
    }
  }
}
provider "aws" {
  region = "ap-southeast-1"
}
