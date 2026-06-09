resource "aws_cloudtrail" "trail" {
  name                          = "main-trail"
  s3_bucket_name                = aws_s3_bucket.logs.bucket
  enable_logging                = true
  is_multi_region_trail         = true
  include_global_service_events = true
  enable_log_file_validation    = true
}
