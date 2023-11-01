# ---- root/providers.tf

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.28.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  access_key = "AKIAWJOSB4OJQTYMAMPI"
  secret_key = "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"
}