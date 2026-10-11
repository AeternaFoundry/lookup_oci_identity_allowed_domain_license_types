data "oci_identity_allowed_domain_license_types" "identity_allowed_domain_license_types_lookup" {
  for_each = var.identity_allowed_domain_license_types_lookup

  current_license_type_name = each.value.current_license_type_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

