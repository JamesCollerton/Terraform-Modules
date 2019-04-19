variable "api_gateway_id" {
  type 		= "string"
  description 	= "The Id of the api gateway we want to create the deployment for"
}

variable "stage_name" {
  type 		= "string"
  description 	= "The name of the stage to create"
}

#variable "depends_on_proxy" {
#  type 		= "list"
#  description 	= "This is a work around for a list of dependent resources, by passing the Ids in here we create a dependency between the two areas."
#}
#
#variable "depends_on" { default = [], type = "list"}
