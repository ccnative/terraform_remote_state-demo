terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
  backend "local" {}
}

provider "aws" {
  region = var.region
}

resource "aws_vpc" "test-vpc" {
  cidr_block = "10.100.0.0/16"

  tags = {
    Name        = "test-vpc"
    Environment = "demo"
  }
}

resource "aws_subnet" "test-subnet" {
  vpc_id     = aws_vpc.test-vpc.id
  cidr_block = "10.100.0.0/24"

  tags = {
    Name        = "test-subnet"
    Environment = "demo"
  }
}
