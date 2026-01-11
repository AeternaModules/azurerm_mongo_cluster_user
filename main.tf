resource "azurerm_mongo_cluster_user" "mongo_cluster_users" {
  for_each = var.mongo_cluster_users

  identity_provider_type = each.value.identity_provider_type
  mongo_cluster_id       = each.value.mongo_cluster_id
  object_id              = each.value.object_id
  principal_type         = each.value.principal_type

  role {
    database = each.value.role.database
    name     = each.value.role.name
  }
}

