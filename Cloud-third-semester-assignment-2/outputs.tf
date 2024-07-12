# output "website_url" {
#   value = aws_cloudfront_distribution.website_distribution.julianangel.me
# }

# output "certificate_arn" {
#   value = aws_acm_certificate.cert.arn
# }


output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = module.s3_bucket.bucket_name
}

output "cloudfront_distribution_domain_name" {
  description = "The domain name of the CloudFront distribution"
  value       = module.cloudfront.cloudfront_domain_name
}

output "route53_record_name" {
  description = "The Route 53 record name"
  value       = module.route53.domain_name
}
