resource "aws_lambda_function" "lambda_function" {
  function_name = var.function_name
  role          = var.role_name
  filename      = var.filename
  handler       = var.handler
  runtime       = var.runtime
  description   = var.description
  timeout       = var.timeout
}
