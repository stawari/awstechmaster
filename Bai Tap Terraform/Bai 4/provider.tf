terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}


terraform {
  cloud {
    organization = "StaCorp"

    workspaces {
      name = "TFexamp-B1"
    }
  }
}
