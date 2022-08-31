module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "2.3.1"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }

  default_location = var.location

  root_parent_id            = var.root_parent_id
  deploy_core_landing_zones = false

  custom_landing_zones = {
    (var.display_name) = {
      display_name               = var.display_name
      parent_management_group_id = var.root_parent_id
      subscription_ids           = var.subscription_ids
      archetype_config = {
        archetype_id = var.archetype_id
        parameters   = var.parameters
        access_control = {
          "reader"      = [azuread_group.reader.object_id]
          "contributor" = [azuread_group.contributor.object_id]
          "owner"       = [azuread_group.owner.object_id]
        }
      }
    }
  }
  default_tags = var.tags
}
