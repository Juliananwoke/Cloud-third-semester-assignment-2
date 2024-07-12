resource "aws_api_gateway_rest_api" "api" {
  name        = var.api_name
  description = var.api_description
}

variable "api_name" {
  description = "The name of the API"
  type        = string
}

variable "api_description" {
  description = "The description of the API"
  type        = string
}
