variable "notification_destinations" {
  description = <<EOT
Map of notification_destinations, attributes below
Required:
    - name
    - type
    - property (block):
        - display_value (optional)
        - key (required)
        - label (optional)
        - value (required)
Optional:
    - account_id
    - active
    - auth_basic (block):
        - password (required)
        - user (required)
    - auth_custom_header (block):
        - key (required)
        - value (required)
    - auth_token (block):
        - prefix (optional)
        - token (required)
    - scope (block):
        - id (required)
        - type (required)
    - secure_url (block):
        - prefix (required)
        - secure_suffix (required)
    - timeouts (block):
        - create (optional)
        - update (optional)
EOT

  type = map(object({
    name       = string
    type       = string
    account_id = optional(number)
    active     = optional(bool)
    property = list(object({
      display_value = optional(string)
      key           = string
      label         = optional(string)
      value         = string
    }))
    auth_basic = optional(object({
      password = string
      user     = string
    }))
    auth_custom_header = optional(list(object({
      key   = string
      value = string
    })))
    auth_token = optional(object({
      prefix = optional(string)
      token  = string
    }))
    scope = optional(object({
      id   = string
      type = string
    }))
    secure_url = optional(object({
      prefix        = string
      secure_suffix = string
    }))
    timeouts = optional(object({
      create = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.notification_destinations : (
        length(v.property) >= 1
      )
    ])
    error_message = "Each property list must contain at least 1 items"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

