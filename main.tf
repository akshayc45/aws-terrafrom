resource "null_resource" "example" {
  # This triggers the resource whenever the message changes
  triggers = {
    message = "Hello, Terraform!"
  }

  provisioner "local-exec" {
    command = "echo ${self.triggers.message}"
  }
}


terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.2"
    }
  }
}

provider "null" {
  # Configuration options
}
