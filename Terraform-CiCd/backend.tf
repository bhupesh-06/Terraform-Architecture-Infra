terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    region  = "ap-south-1"
    profile = "Akash"
    key     = "id_rsa.pub"
    bucket  = "terraformcicd06"
  }
}
