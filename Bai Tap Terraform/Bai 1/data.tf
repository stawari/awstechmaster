

//get VPC ID from AWS
data "aws_vpc" "TFexam-vpc" {

  tags = {
    Name = "TFexam-vpc"
  }
}

//get Domain Zone From AWS
data "aws_route53_zone" "stadomain_zone" {
  name = "stawari.net."
}

//get Subnet Info from AWS

data "aws_subnet" "TFexam-b1_public-subnet1a" {
  tags = {
    Name = "TFexam-vpc-public-ap-southeast-1a"
  }
}
