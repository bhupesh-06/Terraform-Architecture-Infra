variable "environment" {
  description = "The name of the environment"
  type = string
  default = "Dev"
}

variable "cluster" {
  default     = "Akash"
  description = "The name of the ECS cluster"

}
