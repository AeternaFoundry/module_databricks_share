output "shares_id" {
  description = "Map of id values across all shares, keyed the same as var.shares except keys with no id are omitted"
  value       = { for k, v in databricks_share.shares : k => v.id if v.id != null && length(v.id) > 0 }
}
output "shares_comment" {
  description = "Map of comment values across all shares, keyed the same as var.shares except keys with no comment are omitted"
  value       = { for k, v in databricks_share.shares : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "shares_created_at" {
  description = "Map of created_at values across all shares, keyed the same as var.shares except keys with no created_at are omitted"
  value       = { for k, v in databricks_share.shares : k => v.created_at if v.created_at != null }
}
output "shares_created_by" {
  description = "Map of created_by values across all shares, keyed the same as var.shares except keys with no created_by are omitted"
  value       = { for k, v in databricks_share.shares : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "shares_effective_owner" {
  description = "Map of effective_owner values across all shares, keyed the same as var.shares except keys with no effective_owner are omitted"
  value       = { for k, v in databricks_share.shares : k => v.effective_owner if v.effective_owner != null && length(v.effective_owner) > 0 }
}
output "shares_name" {
  description = "Map of name values across all shares, keyed the same as var.shares except keys with no name are omitted"
  value       = { for k, v in databricks_share.shares : k => v.name if v.name != null && length(v.name) > 0 }
}
output "shares_object" {
  description = "Map of object values across all shares, keyed the same as var.shares except keys with no object are omitted"
  value       = { for k, v in databricks_share.shares : k => v.object if v.object != null && length(v.object) > 0 }
}
output "shares_owner" {
  description = "Map of owner values across all shares, keyed the same as var.shares except keys with no owner are omitted"
  value       = { for k, v in databricks_share.shares : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "shares_provider_config" {
  description = "Map of provider_config values across all shares, keyed the same as var.shares except keys with no provider_config are omitted"
  value       = { for k, v in databricks_share.shares : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "shares_storage_location" {
  description = "Map of storage_location values across all shares, keyed the same as var.shares except keys with no storage_location are omitted"
  value       = { for k, v in databricks_share.shares : k => v.storage_location if v.storage_location != null && length(v.storage_location) > 0 }
}
output "shares_storage_root" {
  description = "Map of storage_root values across all shares, keyed the same as var.shares except keys with no storage_root are omitted"
  value       = { for k, v in databricks_share.shares : k => v.storage_root if v.storage_root != null && length(v.storage_root) > 0 }
}
output "shares_updated_at" {
  description = "Map of updated_at values across all shares, keyed the same as var.shares except keys with no updated_at are omitted"
  value       = { for k, v in databricks_share.shares : k => v.updated_at if v.updated_at != null }
}
output "shares_updated_by" {
  description = "Map of updated_by values across all shares, keyed the same as var.shares except keys with no updated_by are omitted"
  value       = { for k, v in databricks_share.shares : k => v.updated_by if v.updated_by != null && length(v.updated_by) > 0 }
}

