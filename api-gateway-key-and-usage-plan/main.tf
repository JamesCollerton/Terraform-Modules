resource "aws_api_gateway_usage_plan" "aws_api_gateway_usage_plan" {
  name = "${var.aws_api_gateway_usage_plan_name}"

  api_stages {
    api_id = "${var.aws_api_gateway_rest_api_id}"
    stage  = "${var.aws_api_gateway_deployment_stage_name}"
  }
}

resource "aws_api_gateway_api_key" "aws_api_gateway_api_key" {
  name = "${var.aws_api_gateway_api_key_name}"
}

resource "aws_api_gateway_usage_plan_key" "aws_api_gateway_usage_plan_key" {
  key_id        = "${aws_api_gateway_api_key.aws_api_gateway_api_key.id}"
  key_type      = "API_KEY"
  usage_plan_id = "${aws_api_gateway_usage_plan.aws_api_gateway_usage_plan.id}"
}
