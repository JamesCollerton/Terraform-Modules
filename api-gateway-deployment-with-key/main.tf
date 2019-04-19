resource "aws_api_gateway_deployment" "api_gateway_deployment" {
  depends_on 	= "${var.api_gateway_dependencies}"
  rest_api_id 	= "${var.api_gateway_id}"
  stage_name  	= "${var.stage_name}"
}