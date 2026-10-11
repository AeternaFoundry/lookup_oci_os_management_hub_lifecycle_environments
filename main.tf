data "oci_os_management_hub_lifecycle_environments" "os_management_hub_lifecycle_environments_lookup" {
  for_each = var.os_management_hub_lifecycle_environments_lookup

  arch_type                = each.value.arch_type
  compartment_id           = each.value.compartment_id
  display_name             = each.value.display_name
  display_name_contains    = each.value.display_name_contains
  lifecycle_environment_id = each.value.lifecycle_environment_id
  location                 = each.value.location
  location_not_equal_to    = each.value.location_not_equal_to
  os_family                = each.value.os_family
  state                    = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

