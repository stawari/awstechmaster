resource "aws_s3_bucket" "TFexam-b2_KVbucket" {
  bucket = "tfexam-b2-kvbucket"
}


resource "aws_s3_bucket_public_access_block" "rules3" {
  bucket = aws_s3_bucket.TFexam-b2_KVbucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


