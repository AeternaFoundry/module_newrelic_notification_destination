output "notification_destinations_id" {
  description = "Map of id values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.id }
}
output "notification_destinations_account_id" {
  description = "Map of account_id values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.account_id }
}
output "notification_destinations_active" {
  description = "Map of active values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.active }
}
output "notification_destinations_auth_basic" {
  description = "Map of auth_basic values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => one(v.auth_basic) }
  sensitive   = true
}
output "notification_destinations_auth_custom_header" {
  description = "Map of auth_custom_header values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.auth_custom_header }
  sensitive   = true
}
output "notification_destinations_auth_token" {
  description = "Map of auth_token values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => one(v.auth_token) }
  sensitive   = true
}
output "notification_destinations_guid" {
  description = "Map of guid values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.guid }
}
output "notification_destinations_last_sent" {
  description = "Map of last_sent values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.last_sent }
}
output "notification_destinations_name" {
  description = "Map of name values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.name }
}
output "notification_destinations_property" {
  description = "Map of property values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.property }
}
output "notification_destinations_scope" {
  description = "Map of scope values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => one(v.scope) }
}
output "notification_destinations_secure_url" {
  description = "Map of secure_url values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => one(v.secure_url) }
  sensitive   = true
}
output "notification_destinations_status" {
  description = "Map of status values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.status }
}
output "notification_destinations_type" {
  description = "Map of type values across all notification_destinations, keyed the same as var.notification_destinations"
  value       = { for k, v in newrelic_notification_destination.notification_destinations : k => v.type }
}

