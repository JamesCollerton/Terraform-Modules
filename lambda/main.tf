resource "aws_lambda_function" "aws_lambda_function" {
  s3_bucket 	   = "${var.lambda_s3_bucket}"
  s3_key 	   = "${var.lambda_s3_key}"
  function_name    = "${var.lambda_function_name}"
  role             = "${var.iam_for_lambda_arn}"
  handler          = "${var.lambda_function_handler}"
  memory_size	   = "${var.lambda_memory_size}"
  timeout  	   = "${var.lambda_timeout}"
  runtime          = "java8"
}
