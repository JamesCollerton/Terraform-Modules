resource "null_resource" "api_gateway_deployment_depends_on" {
  triggers {
    api_gateway_depends_on = "${var.depends_on_string}"
  }
}

resource "aws_api_gateway_deployment" "api_gateway_deployment" {
  depends_on 	= [
    "null_resource.api_gateway_deployment_depends_on"
  ]
  rest_api_id 	= "${var.api_gateway_id}"
  stage_name  	= "${var.stage_name}"
}
