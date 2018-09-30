provider "aws" {
  version = "1.36.0"
  profile = "tasdik"
  region  = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "tasdikrahman-ops-bucket"
    key    = "aws/ap-south-1/homelab/poseidon/terraform.tfstate"
    region = "ap-south-1"
  }
}
