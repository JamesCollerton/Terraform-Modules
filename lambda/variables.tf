variable "lambda_function_filename" { 
  description = "Name of the zip file we will upload as the lambda"
  type = "string"
}

variable "lambda_function_name" {
  description = "Name we would like to assign to the lambda function"
  type = "string"
}

variable "lambda_function_handler" {
  description = "The name of the method invoked in the lambda, given Class::method"
  type = "string"
}

