terraform {
    backend "s3" {
        bucket = "invcr-tfstate"
        encrypt = true
        key = "vpcpeerpoc/invfra"
        region = "us-east-1"
    }
}

provider "aws" {
  region = "us-east-1"
}