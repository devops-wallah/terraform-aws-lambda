module "lambda_function" {
  source = "../../modules/lambda-function"

  function_name = "sagar-test-function"
  role_name     = "serverless-test-role"
  filename      = "./src/app.zip"
  handler       = "app.lambda_handler"
  runtime       = "python3.14"
}
