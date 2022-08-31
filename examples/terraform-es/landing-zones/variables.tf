variable "root_parent_id" {
  description = "The ID of the desired parent management group."
  type        = string
  default     = "es-landing-zones"
}

variable "location" {
  description = "The location used for this deployment."
  type        = string
  default     = "westeurope"
}

variable "display_name" {
  description = "Landing zones display name."
  type        = string
}

variable "tags" {
  description = "Tags used for all resources deployed through this root module."
  type        = map(string)
  default     = {}
}

variable "subscription_ids" {
  description = "List of subscriptions for the landing zone."
  type        = list(string)
}

variable "archetype_id" {
  description = "The archetype ID used for the landing zone."
  type        = string
  default     = "default_empty"
}

variable "parameters" {
  description = "Custom parameters for the archetype."
  type        = map(any)
  default     = {}
}

variable "access_control" {
  description = "Mapping of roles to object ids for access control to the landing zone."
  type = object({
    owner       = string
    contributor = string
    reader      = string
  })
}
