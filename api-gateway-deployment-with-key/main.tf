resource "aws_api_gateway_deployment" "api_gateway_deployment" {
  rest_api_id 	= "${var.api_gateway_id}"
  stage_name  	= "${var.stage_name}"
}
