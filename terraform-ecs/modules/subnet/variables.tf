variable "name" {
  description = "Name of the subnet, actual name will be, for example: name_eu-west-1a"
  type = string
  default = "ca-central-1a"
}

variable "environment" {
  description = "The name of the environment"
   type = string
  default = "Dev"
}

variable "cidrs" {
  type        = list
  default = ["10.0.1.0/24" , "10.0.2.0/24"]
  description = "List of cidrs, for every availability zone you want you need one. Example: 10.0.0.0/24 and 10.0.1.0/24"
}

variable "availability_zones" {
  type        = list
  default = ["ca-central-1a" , "ca-central-1b"]
  description = "List of availability zones you want. Example: eu-west-1a and eu-west-1b"
}

variable "vpc_id" {
  description = "VPC id to place subnet into"
  type = string
  default = "vpc-071557d38fdc7e309"
}
