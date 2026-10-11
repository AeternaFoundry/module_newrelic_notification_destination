resource "newrelic_notification_destination" "notification_destinations" {
  for_each = var.notification_destinations

  name       = each.value.name
  type       = each.value.type
  account_id = each.value.account_id
  active     = each.value.active

  dynamic "property" {
    for_each = each.value.property
    content {
      display_value = property.value.display_value
      key           = property.value.key
      label         = property.value.label
      value         = property.value.value
    }
  }

  dynamic "auth_basic" {
    for_each = each.value.auth_basic != null ? [each.value.auth_basic] : []
    content {
      password = auth_basic.value.password
      user     = auth_basic.value.user
    }
  }

  dynamic "auth_custom_header" {
    for_each = each.value.auth_custom_header != null ? each.value.auth_custom_header : []
    content {
      key   = auth_custom_header.value.key
      value = auth_custom_header.value.value
    }
  }

  dynamic "auth_token" {
    for_each = each.value.auth_token != null ? [each.value.auth_token] : []
    content {
      prefix = auth_token.value.prefix
      token  = auth_token.value.token
    }
  }

  dynamic "scope" {
    for_each = each.value.scope != null ? [each.value.scope] : []
    content {
      id   = scope.value.id
      type = scope.value.type
    }
  }

  dynamic "secure_url" {
    for_each = each.value.secure_url != null ? [each.value.secure_url] : []
    content {
      prefix        = secure_url.value.prefix
      secure_suffix = secure_url.value.secure_suffix
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      update = timeouts.value.update
    }
  }
}

