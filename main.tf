provider "aws" {
  region = "us-east-1"
  access_key = "AKIAIM4C7XEIN2DKUWHA"
  secret_key = "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"
}



resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "production"
  }
}

resource "aws_vpc" "second-vpc" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "development"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id     = aws_vpc.second-vpc.id
  cidr_block = "10.1.1.0/24"

  tags = {
    Name = "dev-subnet"
  }
}


#resource "aws_instance" "my-first-instance" {
#  ami           = "ami-0885b1f6bd170450c"
#  instance_type = "t2.micro"
#  tags = {
#    # Name = "Ubuntu"
#  }
#}








# # resource "<provider>_<resource_type>" "name" {}


# # 1. Create vpc

# resource "aws_vpc" "prod-vpc" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#     Name = "production"
#   }
# }
