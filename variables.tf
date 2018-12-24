variable "aws" {
	description = "define região da vpc"
	default = ""
}

variable "region" {
	description	=	"armazena região"
	default = "us-east-1"
}


variable "aws_vpc" {
	description	=	"cria vpc"
	default	=	""
}

variable "instance_tenancy"	{
	description	=	"tipo de vpc"
	default	=	""
}

variable "vpc_cidr" {
	description	=	"define range ip da vpc"
	default	=	"10.0.0.0/16"
}

variable "subnet_cidr" {
	description	=	"define range ip da subnet"
	type	=	"list"
	default	=	["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}

variable "cidr_block" {
	description = "blocos de subrede da vpc"
	default = ""
}

#variable "aws_subnet" {
#	description	=	"monta a subnet na vpc"
#	default	=	""
#}

#variable "azs" {
#	description	=	"define zona de disponibilidade por subnet"
#	type	=	"list"
#	default	=	["us-east-1a,us-east-1b,us-east-1c"]
#}

data "aws_availability_zones" "azs"	{}

