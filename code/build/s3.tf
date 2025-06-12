provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "12793ff6-9054-4037-82cb-3127b5f8f068"
    git_commit           = "36be8c01f722c50a08e7aa7201d67dadab89d04c"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-12 00:58:06"
    git_last_modified_by = "90427049+joey1089@users.noreply.github.com"
    git_modifiers        = "90427049+joey1089"
    git_org              = "joey1089"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

#create S3 bucket 
resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
