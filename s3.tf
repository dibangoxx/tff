resource "aws_s3_bucket" "dev-ch1bango" {
  bucket = "my-tf-test0bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.dev-ch1bango.id
  acl    = "private"
}