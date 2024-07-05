provider "acme" {
  server_url = "https://acme-v02.api.letsencrypt.org/directory"
}

provider "aws" {
  alias  = "acm_provider"
  region = var.aws_region
}