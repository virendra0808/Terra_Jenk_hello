#create subnet
terraform {
  required_version = ">= 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

}
provider "aws" {
  region = "ap-south-1"
  # access_key = "${var.access_key}"
  # secret_key = "${var.secret_key}"
}

#create a vpc
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "myv_subnet" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "tf-example"
  }
}
