terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.67.0"
    }
  }
}

backend {
    bucket = "{SEU-BUCKET}"
    key = "{SEU-PROJETO}.tfstate"
    region = "us-east-1"
}

provider "aws" {
  region = "us-east-1"
}