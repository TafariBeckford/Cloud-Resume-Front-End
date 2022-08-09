#S3 Bucket Confiuration
resource "aws_s3_bucket" "tb" {
  bucket = var.domain_name
}

resource "aws_s3_bucket_website_configuration" "tb" {
  bucket = aws_s3_bucket.tb.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_acl" "tb" {
  bucket = aws_s3_bucket.tb.id

  acl = "public-read"
}

resource "aws_s3_bucket_policy" "site" {
  bucket = aws_s3_bucket.tb.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.tb.arn}/*",
      },
    ]
  })
}


resource "aws_s3_bucket" "www" {
  bucket = "www.${var.domain_name}"
}

resource "aws_s3_bucket_acl" "www" {
  bucket = aws_s3_bucket.www.id

  acl = "private"
}

resource "aws_s3_bucket_website_configuration" "www" {
  bucket = aws_s3_bucket.tb.id

  redirect_all_requests_to {
    host_name = var.domain_name
  }
}

