variable "project_name" {
  description = "Name used for tagging and naming AWS resources."
  type        = string
  default     = "fekry-portfolio"
}

variable "aws_region" {
  description = "AWS region for the resources. CloudFront requires us-east-1 for certificates."
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name for the static website."
  type        = string
  default     = "fekry-portfolio-static-site"
}

variable "domain_name" {
  description = "Custom domain for the site, for example www.example.com. Leave empty to use the CloudFront default domain."
  type        = string
  default     = ""
}

variable "hosted_zone_name" {
  description = "Route53 hosted zone name used for DNS validation and alias records. Example: example.com"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Extra tags applied to all resources."
  type        = map(string)
  default = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
