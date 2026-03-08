# Terraform module for AWS Lambda Function

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lambda_function.lambda_function](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dead_letter_config"></a> [dead\_letter\_config](#input\_dead\_letter\_config) | The dead letter config for the lambda function | <pre>map({<br/>    target_arn = string<br/>  })</pre> | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | The function description | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment variables for the lambda function | <pre>object({<br/>    variables = map(string)<br/>  })</pre> | `null` | no |
| <a name="input_ephemeral_storage"></a> [ephemeral\_storage](#input\_ephemeral\_storage) | Ephemeral storage size | <pre>object({<br/>    size = number<br/>  })</pre> | `null` | no |
| <a name="input_file_system_config"></a> [file\_system\_config](#input\_file\_system\_config) | file system configuration | <pre>object({<br/>    arn              = string<br/>    local_mount_path = string<br/>  })</pre> | `null` | no |
| <a name="input_filename"></a> [filename](#input\_filename) | Filename | `string` | `null` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | The name of lambda function | `string` | n/a | yes |
| <a name="input_handler"></a> [handler](#input\_handler) | Lambda handler | `string` | `null` | no |
| <a name="input_image_config"></a> [image\_config](#input\_image\_config) | image config for docker image | <pre>object({<br/>    command           = string<br/>    entry_point       = string<br/>    working_directory = string<br/>  })</pre> | `null` | no |
| <a name="input_image_uri"></a> [image\_uri](#input\_image\_uri) | image uri | `string` | `null` | no |
| <a name="input_kms_key_arm"></a> [kms\_key\_arm](#input\_kms\_key\_arm) | kms\_key\_arm | `string` | `null` | no |
| <a name="input_layers"></a> [layers](#input\_layers) | layers | `list(string)` | `null` | no |
| <a name="input_logging_config"></a> [logging\_config](#input\_logging\_config) | logging\_config | <pre>object({<br/>    log_format            = string<br/>    log_group             = optional(string)<br/>    application_log_level = optional(string)<br/>    system_log_level      = optional(string)<br/>  })</pre> | `null` | no |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | memory\_size | `string` | `null` | no |
| <a name="input_package_type"></a> [package\_type](#input\_package\_type) | Package type - Image or Zip | `string` | `null` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The role\_arn of execution role | `string` | `null` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | Runtime for function execution | `string` | `null` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | Maximum time the function can run | `number` | `3` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_function_arn"></a> [function\_arn](#output\_function\_arn) | The lambda function ARN | 
<!-- END_TF_DOCS -->