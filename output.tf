output "website_bucket_name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.tb.id
}

output "bucket_endpoint" {
  description = "Bucket endpoint"
  value       = aws_s3_bucket.tb.website_endpoint
}

output "domain_name" {
  description = "Website endpoint"
  value       = var.domain_name
}
