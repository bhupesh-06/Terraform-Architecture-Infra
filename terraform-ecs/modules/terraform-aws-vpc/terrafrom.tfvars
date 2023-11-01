tags = {
  "Akash" = "My-Vpc"
}

public_subnet_cidr_block = ["192.168.1.0/24", "192.168.2.0/24"]

private_subnet_cidr_block = ["192.168.3.0/24", "192.168.4.0/24"]

public_tags = {
  "subnet" = "public_subnet"
}

private_tags = {
  "subnet" = "public_subnet"
}

pub_availability_zones = [ "ca-central-1a" , "ca-central-1b" ]

pri_availability_zones = [ "ca-central-1c" , "ca-central-1d" ]

