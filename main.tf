provider "aws" {
  region     = "${var.region}"
}
resource "aws_vpc" "vpc" {
 cidr_block       = "${var.vpc_cidr}"
 #instance_tenancy = "default"
 
 tags {
   Name = "main"
 }
}

resource "aws_subnet" "subnet" {
	count	=	"3"
	count 			  = "${length(data.aws_availability_zones.azs.names)}"
	availability_zone =	"${element(data.aws_availability_zones.azs.names,count.index)}"
	vpc_id			  =	"${aws_vpc.vpc.id}"
	cidr_block 		  = "${element(var.subnet_cidr,count.index)}"

	tags {
		Name = "subnet${count.index+1}"
	}
}
	