resource "google_pubsub_lite_subscription" "pubsub_lite_subscriptions" {
  for_each = var.pubsub_lite_subscriptions

  name            = each.value.name
  topic           = each.value.topic
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  region          = each.value.region
  zone            = each.value.zone

  dynamic "delivery_config" {
    for_each = each.value.delivery_config != null ? [each.value.delivery_config] : []
    content {
      delivery_requirement = delivery_config.value.delivery_requirement
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

