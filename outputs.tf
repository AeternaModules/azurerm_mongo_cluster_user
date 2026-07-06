output "mongo_cluster_users" {
  description = "All mongo_cluster_user resources"
  value       = azurerm_mongo_cluster_user.mongo_cluster_users
}
output "mongo_cluster_users_identity_provider_type" {
  description = "List of identity_provider_type values across all mongo_cluster_users"
  value       = [for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : v.identity_provider_type]
}
output "mongo_cluster_users_mongo_cluster_id" {
  description = "List of mongo_cluster_id values across all mongo_cluster_users"
  value       = [for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : v.mongo_cluster_id]
}
output "mongo_cluster_users_object_id" {
  description = "List of object_id values across all mongo_cluster_users"
  value       = [for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : v.object_id]
}
output "mongo_cluster_users_principal_type" {
  description = "List of principal_type values across all mongo_cluster_users"
  value       = [for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : v.principal_type]
}
output "mongo_cluster_users_role" {
  description = "List of role values across all mongo_cluster_users"
  value       = [for k, v in azurerm_mongo_cluster_user.mongo_cluster_users : v.role]
}

