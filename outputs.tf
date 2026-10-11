output "pubsub_lite_subscriptions_id" {
  description = "Map of id values across all pubsub_lite_subscriptions, keyed the same as var.pubsub_lite_subscriptions except keys with no id are omitted"
  value       = { for k, v in google_pubsub_lite_subscription.pubsub_lite_subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pubsub_lite_subscriptions_deletion_policy" {
  description = "Map of deletion_policy values across all pubsub_lite_subscriptions, keyed the same as var.pubsub_lite_subscriptions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_pubsub_lite_subscription.pubsub_lite_subscriptions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "pubsub_lite_subscriptions_delivery_config" {
  description = "Map of delivery_config values across all pubsub_lite_subscriptions, keyed the same as var.pubsub_lite_subscriptions except keys with no delivery_config are omitted"
  value       = { for k, v in google_pubsub_lite_subscription.pubsub_lite_subscriptions : k => one(v.delivery_config) if v.delivery_config != null && length(v.delivery_config) > 0 }
}
output "pubsub_lite_subscriptions_name" {
  description = "Map of name values across all pubsub_lite_subscriptions, keyed the same as var.pubsub_lite_subscriptions except keys with no name are omitted"
  value       = { for k, v in google_pubsub_lite_subscription.pubsub_lite_subscriptions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "pubsub_lite_subscriptions_project" {
  description = "Map of project values across all pubsub_lite_subscriptions, keyed the same as var.pubsub_lite_subscriptions except keys with no project are omitted"
  value       = { for k, v in google_pubsub_lite_subscription.pubsub_lite_subscriptions : k => v.project if v.project != null && length(v.project) > 0 }
}
output "pubsub_lite_subscriptions_region" {
  description = "Map of region values across all pubsub_lite_subscriptions, keyed the same as var.pubsub_lite_subscriptions except keys with no region are omitted"
  value       = { for k, v in google_pubsub_lite_subscription.pubsub_lite_subscriptions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "pubsub_lite_subscriptions_topic" {
  description = "Map of topic values across all pubsub_lite_subscriptions, keyed the same as var.pubsub_lite_subscriptions except keys with no topic are omitted"
  value       = { for k, v in google_pubsub_lite_subscription.pubsub_lite_subscriptions : k => v.topic if v.topic != null && length(v.topic) > 0 }
}
output "pubsub_lite_subscriptions_zone" {
  description = "Map of zone values across all pubsub_lite_subscriptions, keyed the same as var.pubsub_lite_subscriptions except keys with no zone are omitted"
  value       = { for k, v in google_pubsub_lite_subscription.pubsub_lite_subscriptions : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

