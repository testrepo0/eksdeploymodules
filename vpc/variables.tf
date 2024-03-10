/*
variable "instance_ami" {
  description = "AMI for aws instance"
  default     = "ami-03a6eaae9938c858c"
}

variable "instance_type" {
  description = "type for EC2 instance"
  default     = "t2.micro"
}

variable "enviroment_tag" {
  description = "Enviroment tag"
  default     = "production"
}
*/

variable "region" {
  default = "us-east-1"
}

variable "private_cidr" {
  description = "CIDR block for the VPC"
  type        = list(string)
  #default     = ["10.0.0.0/19", "10.0.32.0/19"]
  default = [ "10.0.128.0/20", "10.0.144.0/20" ]
}

variable "public_cidr" {
  description = "CIDR block for the VPC"
  type        = list(string)
  #default     = ["10.0.64.0/19", "10.0.96.0/19"]
  default = [ "10.0.0.0/20", "10.0.16.0/20" ]
}

variable "availability_zones" {
  description = "availability for the VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}