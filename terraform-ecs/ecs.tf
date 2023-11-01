provider "aws" {
  region  = var.aws_region
  access_key = "AKIAWJOSB4OJQTYMAMPI"
  secret_key = "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"
}

module "ecs" {
  source = "./modules/ecs"

  environment          = var.environment
  cluster              =  var.environment
  cloudwatch_prefix    = "${var.environment}"           #See ecs_instances module when to set this and when not!
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  max_size             = var.max_size
  min_size             = var.min_size
  desired_capacity     = var.desired_capacity
  key_name             = aws_key_pair.ecs.key_name
  instance_type        = var.instance_type
  ecs_aws_ami          = var.aws_ecs_ami
}

resource "aws_key_pair" "ecs" {
  key_name   = "id_rsa.pub-${var.environment}"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDUcqOHZtdKz2m65OqfdYxI42hxmSxryYf5LhtQA8cdmX8qOWn906N3Bv/JMGV+Uq2iMx5iVsA8YUszG7MWpVHG/kwlw/JFGZ7emeRU2TtjvIrQdUrvdLfuXBWs4laP8M2GYiQy6g79iXaxeyFFcmHEKWyeF+V84B5Sfms6Af1IvqXJPTsK4YOhsBFRMXOkxINMkLLGkNT7f3gChGCCDOBd8q89FFQcKfFVIjaUrS192Ocu0Qhn823u5Mnnd6nAQKWY3P9P6f0udjP29TWiOUe4neFT43Za4VDp7D529QF00OXEz2MnrOM+p/WNJhss05oAUBkwVbiKQQTfoDEctTrFA6AliVQjiT4E3ZD+v1Crz21h2FG7+Bf7HAk38bpX6iX+sHW/qjgnhZpObnujIsh6gY7//rYKL5GpjnNu6P4u1DGQo4aCCHXx0gIVfUm34zBgWE8vBwRBQ3YsDoeZlimFqYI2iWJsH7YB7qtJqAqH6iyIM0SOksyj2VSDVkU5g18= akash@BHUPESH-06"
}


