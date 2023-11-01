# --- ec2/variables.tf

variable "webserver_type" {
  type    = string
  default = "t3.micro"
}

variable "kp_pb_sg" {
  type = string
  default = "sg-0078147533c92ef2f"
}

variable "kp_pb_sn" {
  type = list
  default = ["ap-south-1a" , "ap-south-1c" , "ap-south-1d"]

}

variable "key" {
  type = string
  default = "id_rsa.pub"
}