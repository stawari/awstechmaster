resource "aws_security_group" "TFexam-b2_storageserver-fw-rule" {
  name   = "TFexam-b2_storageserver-fw-rule"
  vpc_id = data.aws_vpc.TFexam-vpc.id

  // allow port 80
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  // allow ssh
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress { //Allow all outbound ports
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
