output "identity_allowed_domain_license_types_lookup_id" {
  description = "Map of id values across all identity_allowed_domain_license_types_lookup, keyed the same as var.identity_allowed_domain_license_types_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_allowed_domain_license_types.identity_allowed_domain_license_types_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_allowed_domain_license_types_lookup_allowed_domain_license_types" {
  description = "Map of allowed_domain_license_types values across all identity_allowed_domain_license_types_lookup, keyed the same as var.identity_allowed_domain_license_types_lookup except keys with no allowed_domain_license_types are omitted"
  value       = { for k, v in data.oci_identity_allowed_domain_license_types.identity_allowed_domain_license_types_lookup : k => v.allowed_domain_license_types if v.allowed_domain_license_types != null && length(v.allowed_domain_license_types) > 0 }
}
output "identity_allowed_domain_license_types_lookup_current_license_type_name" {
  description = "Map of current_license_type_name values across all identity_allowed_domain_license_types_lookup, keyed the same as var.identity_allowed_domain_license_types_lookup except keys with no current_license_type_name are omitted"
  value       = { for k, v in data.oci_identity_allowed_domain_license_types.identity_allowed_domain_license_types_lookup : k => v.current_license_type_name if v.current_license_type_name != null && length(v.current_license_type_name) > 0 }
}
output "identity_allowed_domain_license_types_lookup_filter" {
  description = "Map of filter values across all identity_allowed_domain_license_types_lookup, keyed the same as var.identity_allowed_domain_license_types_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_allowed_domain_license_types.identity_allowed_domain_license_types_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

