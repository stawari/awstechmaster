

resource "aws_route53_record" "TFexam-b2_domain_record" {
  zone_id = data.aws_route53_zone.stadomain_zone.zone_id
  name    = "tfexam-b2.${data.aws_route53_zone.stadomain_zone.name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.TFexam-b2_storageserver.public_ip]
}
