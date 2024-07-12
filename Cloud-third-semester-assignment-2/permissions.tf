resource "aws_iam_policy" "allow_s3_access" {
  name = "AllowS3Access"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:ListBucket",
          "s3:GetObject"
        ]
        Resource = [
          "arn:aws:s3:::${module.s3_bucket.bucket_name}",
          "arn:aws:s3:::${module.s3_bucket.bucket_name}/*"
        ]
      }
    ]
  })
}
