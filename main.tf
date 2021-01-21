provider "aws" {
  region = "us-east-1"
  access_key = "####"
  secret_key = "####"
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
