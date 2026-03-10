module "lambda_function" {
  source = "../../modules/lambda-function"

  function_name = "sagar-test-function"
  role_name     = "arn:aws:iam::871386769552:role/serverless-test-role"

  filename         = "./src/app.zip"
  source_code_hash = filebase64sha256("./src/app.zip")


  # s3_bucket = "sagar-test-for-my-testing"
  # s3_key = "app.zip"
  # s3_object_version = "xOemvLIA4n18gjB9TVPKvWRkw8DogjOq"

  #

  handler = "app.lambda_handler"
  runtime = "python3.14"
  timeout = 60

  environment = {
    variables = {
      "name" = "sagar"
    }
  }

  # vpc_config = {
  #   subnet_ids         = ["subnet-12345", "subnet-123433"]
  #   security_group_ids = ["sg-5251272"]
  # }

  tags = {
    "Owner"       = "DevOps-Wallah"
    "Project"     = "AWS Lambda Module"
    "cost-center" = "India"
  }
}
