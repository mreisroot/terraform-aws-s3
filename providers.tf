# Configurar o Terraform e definir providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0"
}

# Configurar o provider aws
provider "aws" {
  region = "us-east-1"
}
