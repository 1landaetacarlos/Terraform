####### provider #######
provider "aws" {
  region = "us-east-1"
}

#######  resource ####### 
module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"
  count = 3
  instance_type = "t2.micro"
  tags = {
    Name = "ec2-instance-module"
  } 
}

