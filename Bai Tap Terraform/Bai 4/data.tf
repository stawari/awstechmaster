

data "aws_vpc" "TFexam-vpc" {

  tags = {
    Name = "TFexam-vpc"
  }
}

data "aws_route53_zone" "stadomain_zone" {
  name = "stawari.net."
}


//get data from subnet id

data "aws_subnet" "TFexam-b1_public-subnet1a" {
  tags = {
    Name = "TFexam-vpc-public-ap-southeast-1a"
  }
}
