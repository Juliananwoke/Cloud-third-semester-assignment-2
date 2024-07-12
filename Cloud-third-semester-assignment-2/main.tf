provider "aws" {
  region = "us-east-2"
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "cloudfront" {
  source              = "./modules/cloudfront"
  bucket_domain_name  = module.s3_bucket.bucket_domain_name
  bucket_name         = var.bucket_name
  acm_certificate_arn = module.ssl_certificate.cert_arn
  domain_name         = var.domain_name
}

module "route53" {
  source                 = "./modules/route53"
  zone_id                = var.zone_id
  domain_name            = var.domain_name
  cloudfront_domain_name = module.cloudfront.cloudfront_domain_name
  cloudfront_zone_id     = module.cloudfront.cloudfront_zone_id
}

module "iam" {
  source = "./modules/iam"
}

module "api_gateway" {
  source = "./modules/api_gateway"
  api_name = var.api_name
  api_description = var.api_description
  resource_path = var.resource_path
}

module "ssl_certificate" {
  source      = "./modules/ssl_certificate"
  domain_name = var.domain_name
  zone_id = var.zone_id
}

output "bucket_name" {
  value = module.s3_bucket.bucket_name
}

output "cloudfront_distribution_domain_name" {
  value = module.cloudfront.cloudfront_domain_name
}

output "route53_record_name" {
  value = module.route53.domain_name
}

