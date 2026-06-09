resource "aws_secretsmanager_secret" "secret" {
  name       = "db-password"
  kms_key_id = aws_kms_key.main.arn
}

resource "aws_secretsmanager_secret_version" "value" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = jsonencode({
    password = "mypassword123"
  })
}
