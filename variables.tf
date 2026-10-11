variable "os_management_hub_lifecycle_environments_lookup" {
  description = <<EOT
Map of os_management_hub_lifecycle_environments_lookup, attributes below
Optional:
    - arch_type
    - compartment_id
    - display_name
    - display_name_contains
    - lifecycle_environment_id
    - location
    - location_not_equal_to
    - os_family
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    arch_type                = optional(string)
    compartment_id           = optional(string)
    display_name             = optional(list(string))
    display_name_contains    = optional(string)
    lifecycle_environment_id = optional(string)
    location                 = optional(list(string))
    location_not_equal_to    = optional(list(string))
    os_family                = optional(string)
    state                    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

