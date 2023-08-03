terraform {
  backend "local" {}
}

# provider
provider "aws" {
  region = "us-east-1"

  access_key = "dummy_access_key"
  secret_key = "dummy_secret_key"

  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    iam      = "http://localhost:14566"
    kinesis  = "http://localhost:14566"
    lambda   = "http://localhost:14566"
    s3       = "http://localhost:14566"
  }
}