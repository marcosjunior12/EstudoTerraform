# Criando Bucket S3

terraform {
  required_version = "1.1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-04071998"
  acl    = "private"

  tags = {
    Name        = "Meu bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
    Owner       = "Marcos Jr"
    UpdatedAt   = "23-05-2022"
  }
}





# Para destuir os recursos, utilizar terraform destroy