output "alb_dns_name" {
  value       = aws_lb.is-hoku.dns_name
  description = "DNS name"
}

output "domain_name" {
  value       = aws_route53_record.is-hoku.name
  description = "Domain Name"
}
