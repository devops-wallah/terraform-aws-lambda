variable "function_name" {
  type        = string
  description = "The name of lambda function"
}

variable "description" {
  type        = string
  description = "The function description"
  default     = null
}
variable "role_name" {
  type        = string
  description = "The role_arn of execution role"
  default     = null
}

variable "filename" {
  type        = string
  description = "Filename"
  default     = null
}

variable "handler" {
  type        = string
  description = "Lambda handler"
  default     = null
}

variable "runtime" {
  type        = string
  description = "Runtime for function execution"
  default     = null
}

variable "timeout" {
  type        = number
  description = "Maximum time the function can run"
  default     = 3
}

variable "dead_letter_config" {
  type = map({
    target_arn = string
  })
  description = "The dead letter config for the lambda function"
  default     = null
}

variable "environment" {
  type = object({
    variables = map(string)
  })
  description = "The environment variables for the lambda function"
  default     = null
}

variable "ephemeral_storage" {
  type = object({
    size = number
  })
  description = "Ephemeral storage size"
  default     = null
}

variable "file_system_config" {
  type = object({
    arn              = string
    local_mount_path = string
  })
  description = "file system configuration"
  default     = null
}

variable "package_type" {
  type        = string
  description = "Package type - Image or Zip"
  default     = null
}

variable "image_config" {
  type = object({
    command           = string
    entry_point       = string
    working_directory = string
  })
  description = "image config for docker image"
  default     = null
}

variable "image_uri" {
  type        = string
  description = "image uri"
  default     = null
}

variable "kms_key_arm" {
  type        = string
  description = "kms_key_arm"
  default     = null
}

variable "layers" {
  type        = list(string)
  description = "layers"
  default     = null
}

variable "memory_size" {
  type        = string
  description = "memory_size"
  default     = null
}

variable "logging_config" {
  type = object({
    log_format            = string
    log_group             = optional(string)
    application_log_level = optional(string)
    system_log_level      = optional(string)
  })
  description = "logging_config"
  default     = null
}