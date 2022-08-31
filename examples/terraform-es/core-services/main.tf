module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "2.3.1"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm.connectivity
    azurerm.management   = azurerm.management
  }

  deploy_connectivity_resources = true
  subscription_id_connectivity  = var.connectivity_subscription_id
  deploy_management_resources   = true
  subscription_id_management    = var.management_subscription_id

  root_parent_id   = data.azurerm_client_config.core.tenant_id
  default_location = var.default_location

  root_name = var.root_name
}
