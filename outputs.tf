output "mongo_cluster_users_id" {
  description = "Map of id values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mongo_cluster_users_identity_provider_type" {
  description = "Map of identity_provider_type values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.identity_provider_type if v.identity_provider_type != null && length(v.identity_provider_type) > 0 }
}
output "mongo_cluster_users_mongo_cluster_id" {
  description = "Map of mongo_cluster_id values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.mongo_cluster_id if v.mongo_cluster_id != null && length(v.mongo_cluster_id) > 0 }
}
output "mongo_cluster_users_object_id" {
  description = "Map of object_id values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.object_id if v.object_id != null && length(v.object_id) > 0 }
}
output "mongo_cluster_users_principal_type" {
  description = "Map of principal_type values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.principal_type if v.principal_type != null && length(v.principal_type) > 0 }
}
output "mongo_cluster_users_role" {
  description = "Map of role values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.role if v.role != null && length(v.role) > 0 }
}

