output "s3_bucket_name" {
  value = aws_s3_bucket.s3test.id
}

output "s3_bucket_region" {
    value = aws_s3_bucket.s3test.id.region
}
