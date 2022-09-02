output "bucket_name" {
    value = aws_s3_bucket.bucket.bucket
}

output "bucket_acl" {
    value = aws_s3_bucket.bucket.acl
}

output "id" {
    value = aws_s3_bucket.bucket.id
}

output "bucket_regional_domain_name" {
    value = aws_s3_bucket.bucket.id
}