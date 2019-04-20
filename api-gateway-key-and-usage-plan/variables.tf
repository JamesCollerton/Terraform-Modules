variable "aws_api_gateway_rest_api_id" {
  type 		= "string"
  description 	= "Id of the AWS API Gateway REST Id for our usage plan"
}

variable "aws_api_gateway_deployment_stage_name" {
  type 		= "string"
  description 	= "Name of the existing deployment stage for our usage plan"
}

variable "aws_api_gateway_usage_plan_name" {
  type 		= "string"
  description 	= "Name of the usage plan we would like to create"
}

variable "aws_api_gateway_api_key_name" {
  type 		= "string"
  description 	= "Name of the key for the usage plan we would like to generate"
}

