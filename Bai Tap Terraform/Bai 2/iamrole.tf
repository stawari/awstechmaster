resource "aws_iam_role" "TFexam-b2_EC2_Access_S3_Role" {
  name               = "TFexam-b2_EC2_Access_S3_Role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "TFexam-b2_EC2_Access_S3_Role_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = aws_iam_role.TFexam-b2_EC2_Access_S3_Role.name
}
resource "aws_iam_instance_profile" "TFexam-b2_EC2_Access_S3_Instance_Profile" {
  name = "EC2AccessS3"
  role = aws_iam_role.TFexam-b2_EC2_Access_S3_Role.name
}
