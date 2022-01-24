terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_key_id
  secret_key = var.aws_key_secret
}

resource "aws_s3_bucket" "tf_playground_bucket" {
  bucket = "test-1241vajgha12414jffhag124h"
  acl    = "private"

  tags = {
    Name        = "Demo Bucket"
    Environment = "Github-Demo"
  }
}

