# //Chuyển tất cả output variable vào đây

output "web_site" {
  value = "https://${aws_route53_record.TFexam-b1_domain_record.name}"
}

