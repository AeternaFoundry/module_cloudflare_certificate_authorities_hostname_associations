resource "cloudflare_certificate_authorities_hostname_associations" "certificate_authorities_hostname_associations" {
  for_each = var.certificate_authorities_hostname_associations

  zone_id             = each.value.zone_id
  hostnames           = each.value.hostnames
  mtls_certificate_id = each.value.mtls_certificate_id
}

