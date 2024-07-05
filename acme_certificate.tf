resource "acme_registration" "reg" {
  account_key_pem = tls_private_key.private_key.private_key_pem
  email_address   = "trung.nt2k@gmail.com"
}

resource "acme_certificate" "cert" {
  account_key_pem = acme_registration.reg.account_key_pem
  common_name     = var.domain_name
  subject_alternative_names = ["*.${var.domain_name}"]

  dns_challenge {
    provider = "route53"
  }

  pre_check_delay = 10
}