variable "root_name" {
  description = "The name of the root management group."
  type        = string
  default     = "Enterprise-Scale"
}

variable "default_location" {
  description = "The default location for all deployments."
  type        = string
  default     = "westeurope"
}

variable "management_subscription_id" {
  description = "The ID for the subscription used for management resources"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9-]{36}$", var.management_subscription_id))
    error_message = "Value must be a valid Subscription ID (GUID)."
  }
}

variable "connectivity_subscription_id" {
  description = "The ID for the subscription used for connectivity resources"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9-]{36}$", var.connectivity_subscription_id))
    error_message = "Value must be a valid Subscription ID (GUID)."
  }
}

data "azurerm_client_config" "core" {}
