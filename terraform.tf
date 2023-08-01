terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.66.1"
    }
    docker = {
        source = "kreuzwerker/docker"
        version = "3.0.2"
    }
  }
  backend "s3" {
    bucket = "internship-practice-backend-state-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "internship-practice-dynamo-state-table"
  }
}
















