resource "aws_acm_certificate" "is-hoku" {
  domain_name               = aws_route53_record.is-hoku.name
  subject_alternative_names = []
  validation_method         = "DNS"
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_acm_certificate_validation" "is-hoku" {
  certificate_arn         = aws_acm_certificate.is-hoku.arn
  validation_record_fqdns = [for record in aws_route53_record.is-hoku_certificate : record.fqdn]
}
