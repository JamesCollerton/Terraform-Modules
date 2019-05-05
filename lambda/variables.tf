variable "lambda_s3_bucket" {
  description 	= "Name of the S3 bucket where we want to store our code"
  type 		= "string"
}

variable "lambda_s3_key" {
  description 	= "Object key of the S3 bucket where we want to store our code"
  type 		= "string"
}

variable "lambda_function_name" {
  description 	= "Name we would like to assign to the lambda function"
  type 		= "string"
}

variable "lambda_function_handler" {
  description 	= "The name of the method invoked in the lambda, given Class::method"
  type 		= "string"
}

variable "lambda_memory_size" {
  description 	= "The amount of memory to allocate for the lambda"
  type 		= "string"
}

variable "lambda_timeout" {
  description 	= "The amount of time before we want to conside the lambda timed out"
  type 		= "string"
}

variable "iam_for_lambda_arn" {
  description 	= "ARN for the IAM role for the lambda"
  type 		= "string"
}

