variable "environment" {
  description = "Deployment environment (dev or prod)"
  type        = string
}

variable "domain_name" {
  description = "Full domain name for the site"
  type        = string
}

variable "root_domain" {
  description = "Root domain for Route53 zone lookup"
  type        = string
}

variable "enable_waf" {
  description = "Whether to attach a WAF ACL to the CloudFront distribution"
  type        = bool
  default     = false
}
