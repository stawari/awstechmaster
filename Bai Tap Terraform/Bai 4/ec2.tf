


resource "aws_instance" "TFexam-b1_webserver" {
  ami                    = "ami-0f62d9254ca98e1aa"
  instance_type          = "t2.micro"
  key_name               = "techmaster_key"
  subnet_id              = data.aws_subnet.TFexam-b1_public-subnet1a.id
  vpc_security_group_ids = [aws_security_group.TFexam-b1_webserver-fw-rule.id]

  root_block_device {
    volume_type = "gp2"
    volume_size = 10
  }
  user_data = file("./resource/script.sh")
  //Copy folder travel vào thư mục /home/ec2-user/
  provisioner "file" {
    source      = "./resource/phpsite"
    destination = "/home/ec2-user"
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("./resource/techmaster_privatekey")
      host        = aws_instance.TFexam-b1_webserver.public_ip
    }
  }
  provisioner "file" {
    source      = "./resource/phpsitessl.conf"
    destination = "/home/ec2-user/phpsitessl.conf"
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("./resource/techmaster_privatekey")
      host        = aws_instance.TFexam-b1_webserver.public_ip
    }
  }

  tags = {
    Name = "TFexam-b1_webserver"
  }


}

