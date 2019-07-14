# Terraform Modules

This repository contains a set of Terraform Modules that can be used to provision certain types of infrastructure in AWS.

## Usage

You can use one of the modules using the below syntax in the module section of your Terraform:

```
github.com/JamesCollerton/Terraform_Modules//<folder containing module>
```

An example S3 module would be as below:

```
module "s3" {
  source      		= "github.com/JamesCollerton/Terraform_Modules//s3"
  aws_s3_bucket_name 	= "${var.aws_s3_bucket_name}"
}
```