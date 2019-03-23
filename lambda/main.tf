resource "aws_lambda_function" "aws_lambda_function" {
  filename         = "${var.lambda_function_filename}"
  function_name    = "${var.lambda_function_name}"
  role             = "${var.iam_for_lambda_arn}"
  handler          = "${var.lambda_function_handler}"
  source_code_hash = "${base64sha256(file(var.lambda_function_filename))}"
  runtime          = "java8"
}
