variable "subscription_name" {
  type        = string
  description = "name of subscription"
}

variable "management_group_id" {
  type        = string
  description = "ID of the parent management group this subscription will be added under"
  default     = "mg-wpp-lz-opgroup-01"
}

variable "is_connectivity_sub" {
  type        = bool
  description = "Is this subscription used as a connectivity subscription?"
  default     = false
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

variable "key" {
  type = number
}

variable "enable_management_group_association" {
  type    = bool
  default = false
}

variable "is_arc_enabled" {
  type    = bool
  default = false
}

variable "is_avs_enabled" {
  type    = bool
  default = false
}

variable "tags" {
  type        = map(any)
  description = "Map of tags that will be assigned to the resources"
  default = {
  }
}