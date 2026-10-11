variable "certificate_authorities_hostname_associations" {
  description = <<EOT
Map of certificate_authorities_hostname_associations, attributes below
Required:
    - zone_id
Optional:
    - hostnames
    - mtls_certificate_id
EOT

  type = map(object({
    zone_id             = string
    hostnames           = optional(list(string))
    mtls_certificate_id = optional(string)
  }))
}

