# //Chuyển tất cả output variable vào đây

output "web_site" {
  value = "http://${aws_route53_record.TFexam-b2_domain_record.name}"
}

