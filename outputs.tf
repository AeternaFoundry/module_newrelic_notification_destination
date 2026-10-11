output "notification_destinations_id" {
  description = "Map of id values across all notification_destinations, keyed the same as var.notification_destinations except keys with no id are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "notification_destinations_account_id" {
  description = "Map of account_id values across all notification_destinations, keyed the same as var.notification_destinations except keys with no account_id are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.account_id if v.account_id != null }
}
output "notification_destinations_active" {
  description = "Map of active values across all notification_destinations, keyed the same as var.notification_destinations except keys with no active are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.active if v.active != null }
}
output "notification_destinations_auth_basic" {
  description = "Map of auth_basic values across all notification_destinations, keyed the same as var.notification_destinations except keys with no auth_basic are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => one(v.auth_basic) if v.auth_basic != null && length(v.auth_basic) > 0 }
  sensitive   = true
}
output "notification_destinations_auth_custom_header" {
  description = "Map of auth_custom_header values across all notification_destinations, keyed the same as var.notification_destinations except keys with no auth_custom_header are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.auth_custom_header if v.auth_custom_header != null && length(v.auth_custom_header) > 0 }
  sensitive   = true
}
output "notification_destinations_auth_token" {
  description = "Map of auth_token values across all notification_destinations, keyed the same as var.notification_destinations except keys with no auth_token are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => one(v.auth_token) if v.auth_token != null && length(v.auth_token) > 0 }
  sensitive   = true
}
output "notification_destinations_guid" {
  description = "Map of guid values across all notification_destinations, keyed the same as var.notification_destinations except keys with no guid are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.guid if v.guid != null && length(v.guid) > 0 }
}
output "notification_destinations_last_sent" {
  description = "Map of last_sent values across all notification_destinations, keyed the same as var.notification_destinations except keys with no last_sent are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.last_sent if v.last_sent != null && length(v.last_sent) > 0 }
}
output "notification_destinations_name" {
  description = "Map of name values across all notification_destinations, keyed the same as var.notification_destinations except keys with no name are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "notification_destinations_property" {
  description = "Map of property values across all notification_destinations, keyed the same as var.notification_destinations except keys with no property are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.property if v.property != null && length(v.property) > 0 }
}
output "notification_destinations_scope" {
  description = "Map of scope values across all notification_destinations, keyed the same as var.notification_destinations except keys with no scope are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => one(v.scope) if v.scope != null && length(v.scope) > 0 }
}
output "notification_destinations_secure_url" {
  description = "Map of secure_url values across all notification_destinations, keyed the same as var.notification_destinations except keys with no secure_url are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => one(v.secure_url) if v.secure_url != null && length(v.secure_url) > 0 }
  sensitive   = true
}
output "notification_destinations_status" {
  description = "Map of status values across all notification_destinations, keyed the same as var.notification_destinations except keys with no status are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.status if v.status != null && length(v.status) > 0 }
}
output "notification_destinations_type" {
  description = "Map of type values across all notification_destinations, keyed the same as var.notification_destinations except keys with no type are omitted"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.type if v.type != null && length(v.type) > 0 }
}

