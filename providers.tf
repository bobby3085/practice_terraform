terraform {
  required_provider {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0"
    }
  }

  required_version = ">=4.0"
}

provider "aws" {
  region = "ap-south-1"
}

