


resource "aws_instance" "TFexam-b2_storageserver" {
  ami                    = "ami-0f62d9254ca98e1aa"
  instance_type          = "t2.micro"
  key_name               = "techmaster_key"
  subnet_id              = data.aws_subnet.TFexam_public-subnet1a.id
  vpc_security_group_ids = [aws_security_group.TFexam-b2_storageserver-fw-rule.id]
  iam_instance_profile   = aws_iam_instance_profile.TFexam-b2_EC2_Access_S3_Instance_Profile.name

  root_block_device {
    volume_type = "gp2"
    volume_size = 10
  }
  user_data = file("./resource/user_data.txt")


  tags = {
    Name = "TFexam-b2_storageserver"
  }


}
