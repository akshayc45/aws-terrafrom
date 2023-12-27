resource "aws_vpc" "main" {
  cidr_block = "10.100.100.0/24"
  tags = {
    Name         = "Devop-test"
    "Owner"      = "DevOps"
    "created by" = "terraform"
  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.30.0"
    }
  }
}
provider "aws" {
  # alias = 'test'
  region     = "eu-central-1"
}
