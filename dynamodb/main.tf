resource "aws_dynamodb_table" "basic-dynamodb-table" {

  name           = "${var.dynamo_db_table_name}"
  billing_mode   = "PROVISIONED"
  read_capacity  = "${var.dynamo_db_read_capacity}" 
  write_capacity = "${var.dynamo_db_write_capacity}" 
  hash_key       = "${var.dynamo_db_hash_key}" 
  range_key      = "${var.dynamo_db_range_key}" 

  attribute 	 = "${var.dynamo_db_list_of_attributes}"

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

}
