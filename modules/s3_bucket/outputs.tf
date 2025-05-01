output "bucket_arn" {
  description = "The ARN of the bucket"
  value       = aws_s3_bucket.bucket.arn
}

output "bucket_id" {
  description = "Name of the bucket"
  value       = aws_s3_bucket.bucket.id
}

#