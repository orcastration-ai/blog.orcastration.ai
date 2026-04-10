output "bucket_name" {
  description = "S3 bucket name for the site"
  value       = module.site.bucket_name
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID"
  value       = module.site.cloudfront_distribution_id
}

output "cloudfront_domain_name" {
  description = "CloudFront distribution domain name"
  value       = module.site.cloudfront_domain_name
}
