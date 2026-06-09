resource "aws_guardduty_detector" "gd" {
  enable = true
}

resource "aws_securityhub_account" "sh" {}

resource "aws_securityhub_standards_subscription" "cis" {
  standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"
}
