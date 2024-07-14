data "aws_acm_certificate" "wildcard" {
  domain   = var.domain_name
  statuses = ["ISSUED"]
  most_recent = true
}

output "acm_certificate_arn" {
  value = data.aws_acm_certificate.wildcard.arn
}
