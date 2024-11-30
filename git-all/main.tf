# Main block of terraform
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

# This is for provider
provider "aws" {
  region = "us-east-1"
}
