provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name    = "vaultpay-vpc"
    Project = "VaultPay"
  }
}

resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs[0]
  availability_zone = "us-east-1a"

  tags = {
    Name    = "vaultpay-public-subnet-a"
    Project = "VaultPay"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs[1]
  availability_zone = "us-east-1b"

  tags = {
    Name    = "vaultpay-public-subnet-b"
    Project = "VaultPay"
  }
}