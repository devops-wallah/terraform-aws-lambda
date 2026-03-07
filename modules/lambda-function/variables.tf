variable "function_name" {
  type        = string
  description = "The name of lambda function"
}

variable "role_name" {
  type        = string
  description = "The role_arn of execution role"
}

variable "filename" {
  type        = string
  description = "Filename"
}

variable "handler" {
  type        = string
  description = "Lambda handler"
}

variable "runtime" {
  type        = string
  description = "Runtime for function execution"
}