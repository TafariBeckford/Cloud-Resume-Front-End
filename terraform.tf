terraform {
  cloud {
    organization = "tafari"

    workspaces {
      name = "Cloud-Resume-Front-End"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}
