terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      #version = "3.0.1"
    }
    aws = {
      source  = "hashicorp/aws"
      #version = ">= 3.26.0"
    }
  }

  #required_version = ">= 0.15"

  backend "remote" {
    organization = "rio-hashicorp"

    workspaces {
      name = "demo-aws-deployment"
    }
  }

}
