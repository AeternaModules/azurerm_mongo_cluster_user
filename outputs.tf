output "mongo_cluster_users_identity_provider_type" {
  description = "Map of identity_provider_type values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.identity_provider_type }
}
output "mongo_cluster_users_mongo_cluster_id" {
  description = "Map of mongo_cluster_id values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.mongo_cluster_id }
}
output "mongo_cluster_users_object_id" {
  description = "Map of object_id values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.object_id }
}
output "mongo_cluster_users_principal_type" {
  description = "Map of principal_type values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.principal_type }
}
output "mongo_cluster_users_role" {
  description = "Map of role values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = { for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : k => v.role }
}

