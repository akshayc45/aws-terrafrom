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
      source = "app.terraform.io/test28Dec/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" { 
  # Configuration options 
}
