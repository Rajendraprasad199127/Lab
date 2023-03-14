variable "opgroup" {
  description = "Name of the Group, used for connectivity subscriptions to derive the Terraform workspace name"
  type        = string
}

variable "billing_account_name" {
  type        = string
  description = "billing_account_name for EA"
  default     = "69793823"
}

variable "enrollment_account_name" {
  type        = string
  description = "enrollment_account_name for EA"
  default     = "286557"
}

variable "deploy_default_resources" {
  type        = bool
  description = "Deploy default resources?"
  default     = false
}

variable "subscription_list" {
  type = list(object({
    key                                 = number
    subscription_name                   = string
    management_group_id                 = string
    is_connectivity_sub                 = bool
    environment                         = optional(string, "Production")
    connectivity_hub_locations          = optional(list(string), null)
    is_arc_enabled                      = optional(bool, false)
    is_avs_enabled                      = optional(bool, false)
    deploy_default_resources            = optional(bool, false)
    enable_management_group_association = bool
    tags                                = optional(map(any))
  }))
}

variable "organization_name" {
  type        = string
  description = "Name of Terraform organization"
}

variable "tfe_hostname" {
  type        = string
  description = "Token for TFE passed in from the pipeline"
}

variable "subscription_id" {
  type    = string
  default = "f243d7f2-78b5-4af6-8668-88613b170ae4" # Management Subscription Id - this subscription ID is only required for Authorization and could be anything. It has 0 actual use. 
}
