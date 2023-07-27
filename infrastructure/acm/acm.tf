resource "aws_acm_certificate" "acm_app_com" {
  domain_name   = "*.${var.domain}"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["*.${var.domain}"]
  validation_method         = "DNS"
}