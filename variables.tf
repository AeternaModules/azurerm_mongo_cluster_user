variable "mongo_cluster_users" {
  description = <<EOT
Map of mongo_cluster_users, attributes below
Required:
    - identity_provider_type
    - mongo_cluster_id
    - object_id
    - principal_type
    - role (block):
        - database (required)
        - name (required)
EOT

  type = map(object({
    identity_provider_type = string
    mongo_cluster_id       = string
    object_id              = string
    principal_type         = string
    role = list(object({
      database = string
      name     = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.mongo_cluster_users : (
        length(v.role) >= 1
      )
    ])
    error_message = "Each role list must contain at least 1 items"
  }
}

