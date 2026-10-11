variable "shares" {
  description = <<EOT
Map of shares, attributes below
Required:
    - name
Optional:
    - comment
    - owner
    - storage_root
    - object (block):
        - cdf_enabled (optional)
        - comment (optional)
        - content (optional)
        - data_object_type (required)
        - history_data_sharing_status (optional)
        - name (required)
        - partition (optional, block):
            - value (optional, block):
                - name (required)
                - op (required)
                - recipient_property_key (optional)
                - value (optional)
        - shared_as (optional)
        - start_version (optional)
        - string_shared_as (optional)
    - provider_config (block):
        - workspace_id (required)
EOT

  type = map(object({
    name         = string
    comment      = optional(string)
    owner        = optional(string)
    storage_root = optional(string)
    object = optional(list(object({
      cdf_enabled                 = optional(bool)
      comment                     = optional(string)
      content                     = optional(string)
      data_object_type            = string
      history_data_sharing_status = optional(string)
      name                        = string
      partition = optional(list(object({
        value = optional(list(object({
          name                   = string
          op                     = string
          recipient_property_key = optional(string)
          value                  = optional(string)
        })))
      })))
      shared_as        = optional(string)
      start_version    = optional(number)
      string_shared_as = optional(string)
    })))
    provider_config = optional(list(object({
      workspace_id = string
    })))
  }))
}

