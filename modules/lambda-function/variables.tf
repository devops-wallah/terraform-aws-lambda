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
  type = object({
    target_arb = string
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
    command           = optional(string)
    entry_point       = optional(string)
    working_directory = optional(string)
  })
  description = "image config for docker image"
  default     = null
}

variable "image_uri" {
  type        = string
  description = "image uri"
  default     = null
}

variable "kms_key_arn" {
  type        = string
  description = "kms_key_arn"
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

variable "architectures" {
  type        = list(string)
  description = "CPU architectures of  system."
  default     = null
}

variable "publish" {
  type        = string
  description = "should pusbhish new version of function"
  default     = null
}

variable "reserved_concurrent_executions" {
  type        = number
  description = "reserved_concurrent_executions  number"
  default     = null
}

variable "s3_bucket" {
  type        = string
  description = "s3 bucket name"
  default     = null
}

variable "s3_key" {
  type        = string
  description = "s3 object key"
  default     = null
}

variable "s3_object_version" {
  type        = string
  description = "version of object"
  default     = null
}

variable "tags" {
  type        = map(any)
  description = "function tags"
  default     = null
}

variable "vpc_config" {
  type = object({
    security_group_ids          = list(string)
    subnet_ids                  = list(string)
    ipv6_allowed_for_dual_stack = optional(bool)
  })
  default = null
}

variable "source_code_hash" {
  type        = string
  description = "Hash to trigger function updated on code chnage"
  default     = null
}