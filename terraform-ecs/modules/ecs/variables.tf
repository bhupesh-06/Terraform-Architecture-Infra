variable "environment" {
  description = "The name of the environment"
   type = string
  default = "Dev"
}

variable "cluster" {
  default     = "Dev"
  description = "The name of the ECS cluster"
}

variable "instance_group" {
  default     = "default"
  description = "The name of the instances that you consider as a group"
}

variable "vpc_cidr" {
  description = "VPC cidr block. Example: 10.0.0.0/16"
  type = string
  default = "192.168.0.0/16"
}


variable "private_subnet_cidrs" {
  type        = list
  description = "List of private cidrs, for every availability zone you want you need one. Example: 10.0.0.0/24 and 10.0.1.0/24"
   default =  ["192.168.3.0/24", "192.168.4.0/24"]
}

variable "public_subnet_cidrs" {
  type        = list
  description = "List of public cidrs, for every availability zone you want you need one. Example: 10.0.0.0/24 and 10.0.1.0/24"
  default = ["192.168.1.0/24", "192.168.2.0/24"]
}

variable "load_balancers" {
  type        = list
  default     = []
  description = "The load balancers to couple to the instances"
}

variable "availability_zones" {
  type        = list
  description = "List of availability zones you want. Example: eu-west-1a and eu-west-1b"
  default = ["ca-central-1a" , "ca-central-1c" , "ca-central-1d"]
}

variable "max_size" {
  description = "Maximum size of the nodes in the cluster"
  type = number
  default = 1
}

variable "min_size" {
  description = "Minimum size of the nodes in the cluster"
  type = number
  default = 1
}

variable "desired_capacity" {
  description = "The desired capacity of the cluster"
  type = number
  default = 1
}

variable "key_name" {
  description = "SSH key name to be used"
  default = "id_rsa.pub-Dev"

}

variable "instance_type" {
  description = "AWS instance type to use"
  default = "t2.micro"
}

variable "ecs_aws_ami" {
  description = "The AWS ami id to use for ECS"
   type = string
  default = "ami-0abc4c35ba4c005ca"
}

variable "custom_userdata" {
  default     = "user_data.sh"
  description = "Inject extra command in the instance template to be run on boot"
}

variable "ecs_config" {
  default     = "echo '' > /etc/ecs/ecs.config"
  description = "Specify ecs configuration or get it from S3. Example: aws s3 cp s3://some-bucket/ecs.config /etc/ecs/ecs.config"
}

variable "ecs_logging" {
  default     = "[\"json-file\",\"awslogs\"]"
  description = "Adding logging option to ECS that the Docker containers can use. It is possible to add fluentd as well"
}

variable "cloudwatch_prefix" {
  default     = "30"
  description = "If you want to avoid cloudwatch collision or you don't want to merge all logs to one log group specify a prefix"
}
