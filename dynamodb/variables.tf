variable "dynamo_db_table_name" {
  type 		= "string"
  description 	= "The name of the DynamoDb table we would like to create"
}

variables "dynamo_db_read_capacity" {
  type 		= "number"
  description   = "The number of provisioned read capacity we would like"
}

variable "dynamo_db_write_capacity" {
  type 		= "number"
  description   = "The number of provisioned write capacity we would like"
}

variable "dynamo_db_hash_key" {
  type 		= "string"
  description   = "The hash, partition or primary key"
}

variable "dynamo_db_range_key" {
  type 		= "string"
  description   = "The range, sort or composite key"
}

variable "dynamo_db_list_of_attributes" {
  type 		= "list"
  description   = "A list of objects representing the attributes we would like in our table"
}

