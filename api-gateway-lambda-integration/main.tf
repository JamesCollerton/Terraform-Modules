resource "aws_api_gateway_resource" "aws_api_gateway_resource" {
  rest_api_id = "${var.api_gateway_id}"
  parent_id   = "${var.api_gateway_root_id}"
  path_part   = "${var.api_gateway_path_part}"
}

resource "aws_api_gateway_method" "aws_api_gateway_method" {
  rest_api_id 		= "${var.api_gateway_id}"
  resource_id   	= "${aws_api_gateway_resource.aws_api_gateway_resource.id}"
  http_method   	= "${var.api_gateway_http_method}"
  api_key_required 	= "${var.api_gateway_key_required}"
  authorization 	= "NONE"
}

resource "aws_api_gateway_integration" "lambda_aws_api_gateway_integration" {
  rest_api_id 		= "${var.api_gateway_id}"
  resource_id 		= "${aws_api_gateway_method.aws_api_gateway_method.resource_id}"
  http_method 		= "${aws_api_gateway_method.aws_api_gateway_method.http_method}"
  timeout_milliseconds 	= "${var.api_gateway_timeout_milliseconds}" 

  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "${var.aws_lambda_function_invoke_arn}"
}
