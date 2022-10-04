

resource "aws_eip" "TFexam-b1_eip" {
  instance = aws_instance.TFexam-b1_webserver.id
  vpc      = true
}
