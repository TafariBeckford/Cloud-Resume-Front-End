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
      version = "4.25.0"
    }
  }
}

