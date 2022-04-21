data "aws_route53_zone" "is-hoku" {
  name = "is-hoku.info"
}

resource "aws_route53_record" "is-hoku" {
  zone_id = data.aws_route53_zone.is-hoku.zone_id
  name    = data.aws_route53_zone.is-hoku.name
  type    = "A"
  alias {
    name                   = aws_lb.is-hoku.dns_name
    zone_id                = aws_lb.is-hoku.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "is-hoku_certificate" {
  for_each = {
    for dvo in aws_acm_certificate.is-hoku.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }
  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  type            = each.value.type
  zone_id         = data.aws_route53_zone.is-hoku.id
  ttl             = 60
}
