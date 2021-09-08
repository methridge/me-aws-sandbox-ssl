output "regional-tls-certs" {
  description = "Set of Regional SSL Cert objects"
  sensitive   = true
  value       = acme_certificate.tls[*]
}
