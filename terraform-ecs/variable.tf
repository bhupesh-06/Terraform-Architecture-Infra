variable "environment" {
  type = string
  default = "Dev"
}
variable "aws_profile" {
  type = string
  default = "Akash"
}
variable "aws_region" {
  type = string
  default = "ca-central-1"
}
variable "aws_ecs_ami" {
  type = string
  default = "ami-0263e4deb427da90e"
}
variable "vpc_cidr" {
  type = string
  default = "192.168.0.0/16"
}
variable "public_subnet_cidrs" {
  type = list
  default = ["192.168.1.0/24", "192.168.2.0/24"]
}
variable "private_subnet_cidrs" {
  type = list 
  default =  ["192.168.3.0/24", "192.168.4.0/24"]
}
variable "availability_zones" {
  type = list
  default = ["ca-central-1a", "ca-central-1b"]
}
variable "max_size" {
  type = number
  default = 1
}
variable "min_size" {
   type = number
  default = 1
}
variable "desired_capacity" {
   type = number
  default = 1
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}


