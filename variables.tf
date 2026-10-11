variable "identity_allowed_domain_license_types_lookup" {
  description = <<EOT
Map of identity_allowed_domain_license_types_lookup, attributes below
Optional:
    - current_license_type_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    current_license_type_name = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

