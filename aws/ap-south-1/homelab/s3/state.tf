provider "aws" {
  version = "1.51.0"
  region  = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "tasdikrahman-ops-bucket"
    key    = "aws/ap-south-1/homelab/s3/terraform.tfstate"
    region = "ap-south-1"
  }
}
