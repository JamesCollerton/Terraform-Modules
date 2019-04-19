variable "${var.api_gateway_dependencies}" {
  type 		= "list(string)"
  description 	= "A list of dependencies to finish before the api gateway starts"
}

variable "${var.api_gateway_id}" {
  type 		= "string"
  description 	= "The Id of the api gateway we want to create the deployment for"
}

variable "${var.stage_name}" {
  type 		= "string"
  description 	= "The name of the stage to create"
}

