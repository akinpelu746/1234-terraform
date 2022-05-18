provider "aws" {
   region = "us-east-2"
    access_key = var.access_key
    secret_key = var.secret_key

}

terraform {
required_version = ">= 0.14.0"


  backend "s3" {
    bucket = "wafi-infrastructure"
    key    = "state/testing/terraform.tfstate"
    region = "us-east-2"
  }

required_providers {

 aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

}

}