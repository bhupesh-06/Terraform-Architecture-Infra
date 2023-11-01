
environment = "Dev"


aws_profile = "Akash"


aws_region = "ca-central-1"

aws_ecs_ami = "ami-00842a994f5018db8"
vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = ["10.0.0.0/24", "10.0.1.0/24"]

private_subnet_cidrs = ["10.0.50.0/24", "10.0.51.0/24"]

availability_zones = ["ca-central-1a", "ca-central-1b"]

max_size = 1

min_size = 1

desired_capacity = 1

instance_type = "t2.micro"
