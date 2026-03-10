resource "aws_lambda_function" "lambda_function" {
  function_name = var.function_name
  description   = var.description

  role = var.role_name

  filename         = var.filename
  source_code_hash = var.source_code_hash

  s3_bucket         = var.s3_bucket
  s3_key            = var.s3_key
  s3_object_version = var.s3_object_version

  handler       = var.handler
  runtime       = var.runtime
  architectures = var.architectures
  timeout       = var.timeout

  kms_key_arn = var.kms_key_arn
  layers      = var.layers

  dynamic "environment" {
    for_each = var.environment == null ? [] : [var.environment]

    content {
      variables = environment.value.variables
    }
  }

  dynamic "vpc_config" {
    for_each = var.vpc_config == null ? [] : [var.vpc_config]

    content {
      subnet_ids                  = vpc_config.value.subnet_ids
      security_group_ids          = vpc_config.value.security_group_ids
      ipv6_allowed_for_dual_stack = vpc_config.value.ipv6_allowed_for_dual_stack

    }
  }

  dynamic "image_config" {
    for_each = var.image_config == null ? [] : [var.image_config]

    content {
      command           = image_config.value.command
      entry_point       = image_config.value.entry_point
      working_directory = image_config.value.working_directory
    }
  }

  dynamic "file_system_config" {
    for_each = var.file_system_config == null ? [] : [var.file_system_config]

    content {
      arn              = file_system_config.value.arn
      local_mount_path = file_system_config.value.local_mount_path
    }
  }

  tags = var.tags

}
