variable "environment" {
  description = "The name of the environment"
  type = string
  default = "Dev"
}

variable "cloudwatch_prefix" {
  type = number
  default     = "30"
  description = "If you want to avoid cloudwatch collision or you don't want to merge all logs to one log group specify a prefix"
}

variable "cluster" {
  description = "The name of the cluster"
  type = string
  default = "Akash-Dev"
}

variable "instance_group" {
  default     = "default"
  description = "The name of the instances that you consider as a group"

}


variable "aws_ami" {
  description = "The AWS ami id to use"
  type = string
  default = "ami-0abc4c35ba4c005ca"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type to use"
}

variable "max_size" {
  default     = 1
  description = "Maximum size of the nodes in the cluster"
}

variable "min_size" {
  default     = 1
  description = "Minimum size of the nodes in the cluster"
}

#For more explenation see http://docs.aws.amazon.com/autoscaling/latest/userguide/WhatIsAutoScaling.html
variable "desired_capacity" {
  default     = 1
  description = "The desired capacity of the cluster"
}

variable "iam_instance_profile_id" {
  description = "The id of the instance profile that should be used for the instances"
  default = "i-0c7b4c1970323fe32"
}

variable "private_subnet_ids" {
  type        = list
  description = "The list of private subnets to place the instances in"
  default =  ["192.168.3.0/24", "192.168.4.0/24"]
}

variable "load_balancers" {
  type        = list
  default     = []
  description = "The load balancers to couple to the instances. Only used when NOT using ALB"
}

variable "depends_id" {
  description = "Workaround to wait for the NAT gateway to finish before starting the instances"
}

variable "key_name" {
  description = "SSH key name to be used"
  default = "id_rsa.pub-Dev"
}

variable "custom_userdata" {
  default     = "user_data.sh"
  description = "Inject extra command in the instance template to be run on boot"

}

variable "vpc_id" {
  type = string
  default = "vpc-0f8becb7a71fe1a27"
}

variable "vpc_zone_identifier" {
  type = list(string)
  default = ["ca-central-1a" ,"ca-central-1c" , "ca-central-1d"]
  
}


variable "ecs_config" {
  default     = "echo '' > /etc/ecs/ecs.config"
  description = "Specify ecs configuration or get it from S3. Example: aws s3 cp s3://some-bucket/ecs.config /etc/ecs/ecs.config"
}

variable "ecs_logging" {
  default     = "[\"json-file\",\"awslogs\"]"
  description = "Adding logging option to ECS that the Docker containers can use. It is possible to add fluentd as well"
}
