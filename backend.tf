terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "ntt2k-org-tf-state"
    dynamodb_table = "ntt2k-org-tf-state-lock"
    key            = "my-static-website.tfstate"
    region         = "us-east-1"
  }
}