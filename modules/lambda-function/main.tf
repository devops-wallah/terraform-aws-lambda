resource "aws_lambda_function" "lambda_function" {
  function_name = var.function_name
  role          = data.aws_iam_role.iam_role.arn
  filename      = var.filename
  handler       = var.handler
  runtime       = var.runtime
}