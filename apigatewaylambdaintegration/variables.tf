variable "api_gateway_id" {
  description = "Id of the API gateway we want to attach the lambda to"
  type = "string"
}

variable "api_gateway_root_id" {
  description = "Root Id of the API gateway we want to attach the lambda to"
  type = "string"
}

variable "aws_lambda_function_invoke_arn" {
  description = "ARN of the lambda we would like to invoke from the end point"
  type = "string"
}

