data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

resource "aws_s3_bucket" "default" {
  bucket        = "sample-bucket-${data.aws_region.current.name}-${data.aws_caller_identity.current.account_id}"
  force_destroy = true
}
