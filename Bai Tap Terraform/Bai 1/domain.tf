
// Update record from Elastic IP to Record Domain
resource "aws_route53_record" "TFexam-b1_domain_record" {
  zone_id = data.aws_route53_zone.stadomain_zone.zone_id
  name    = "tfexam-b1.${data.aws_route53_zone.stadomain_zone.name}"
  type    = "A"
  ttl     = "300"
  records = [aws_eip.TFexam-b1_eip.public_ip]
}
