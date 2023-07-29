terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
  }


  backend "s3" {
    bucket = "local-views-tfstate"
    key    = "app_aws.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}