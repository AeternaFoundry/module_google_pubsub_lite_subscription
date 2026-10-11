variable "pubsub_lite_subscriptions" {
  description = <<EOT
Map of pubsub_lite_subscriptions, attributes below
Required:
    - name
    - topic
Optional:
    - deletion_policy
    - project
    - region
    - zone
    - delivery_config (block):
        - delivery_requirement (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    topic           = string
    deletion_policy = optional(string)
    project         = optional(string)
    region          = optional(string)
    zone            = optional(string)
    delivery_config = optional(object({
      delivery_requirement = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

