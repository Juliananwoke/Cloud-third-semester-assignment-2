variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default = "julianaS3"
}

variable "domain_name" {
  description = "The domain name for the CloudFront distribution"
  type        = string
  default = "juliana.me"
}

variable "zone_id" {
  description = "The ID of the hosted zone in Route 53"
  type        = string
  default=""
}

variable "api_name" {
  description = "The name of the API"
  type        = string
  default = "value"
}

variable "api_description" {
  description = "The description of the API"
  type        = string
}

variable "resource_path" {
  description = "The path for the API resource"
  type        = string
}
