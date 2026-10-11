resource "databricks_share" "shares" {
  for_each = var.shares

  name         = each.value.name
  comment      = each.value.comment
  owner        = each.value.owner
  storage_root = each.value.storage_root

  dynamic "object" {
    for_each = each.value.object != null ? each.value.object : []
    content {
      cdf_enabled                 = object.value.cdf_enabled
      comment                     = object.value.comment
      content                     = object.value.content
      data_object_type            = object.value.data_object_type
      history_data_sharing_status = object.value.history_data_sharing_status
      name                        = object.value.name
      dynamic "partition" {
        for_each = object.value.partition != null ? object.value.partition : []
        content {
          dynamic "value" {
            for_each = partition.value.value != null ? partition.value.value : []
            content {
              name                   = value.value.name
              op                     = value.value.op
              recipient_property_key = value.value.recipient_property_key
              value                  = value.value.value
            }
          }
        }
      }
      shared_as        = object.value.shared_as
      start_version    = object.value.start_version
      string_shared_as = object.value.string_shared_as
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? each.value.provider_config : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

