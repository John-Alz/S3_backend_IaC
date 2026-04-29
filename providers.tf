terraform {
  backend "s3" {
    bucket         = "tf-backend-bucket-jj-2026"
    key            = "proyectos/state_challenge/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}
