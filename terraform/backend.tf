terraform {
  backend "s3" {
    bucket         = "terraform-state-ajay"
    key            = "iac-ci/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

