resource "aws_acm_certificate" "cert" {
  provider          = aws.acm_provider
  certificate_body  = acme_certificate.cert.certificate_pem
  private_key       = acme_certificate.cert.private_key_pem
  certificate_chain = acme_certificate.cert.issuer_pem
}