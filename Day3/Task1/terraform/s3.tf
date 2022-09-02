resource "aws_s3_bucket" "Desenvolve" {
  bucket = "Meu_bucket_exemplo"
}

resource "aws_s3_bucket_acl" "Desenvolve_bucket" {
  bucket = "tcb-blog-s3"
  acl    = "private"
}