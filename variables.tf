variable "aws" {
	description = "define região da vpc"
	default = ""
}

variable "aws_vpc" {
	description	=	"cria vpc"
	default	=	""
}

variable "instance_tenancy"	{
	description	=	"tipo de vpc"
	default	=	""
}

variable "cidr_block" {
	description = "blocos de subrede da vpc"
	default = ""
}