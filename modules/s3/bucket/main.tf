resource "aws_s3_bucket" "bucket" {
  bucket = "${terraform.workspace}-${var.s3_bucket_name}"
  acl    = var.s3_bucket_acl
  tags = {
    CostCenter = terraform.workspace
  }
}
