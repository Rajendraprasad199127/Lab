# Go grab the EA billing details
data "azurerm_billing_enrollment_account_scope" "main" {
  billing_account_name    = var.billing_account_name
  enrollment_account_name = var.enrollment_account_name
}

# Create the subscription
resource "azurerm_subscription" "main" {
  subscription_name = var.subscription_name
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.main.id
  tags = merge(var.tags, {
    CreatedBy                 = "Cloud Hub"
    BaselineResourcesRequired = tostring(var.deploy_default_resources)
    ARCEnabled                = tostring(var.is_arc_enabled)
    AVSEnabled                = tostring(var.is_avs_enabled)
  })
}

# Assign subscription to management group
resource "azurerm_management_group_subscription_association" "main" {
  count               = var.enable_management_group_association == true ? 1 : 0
  management_group_id = "/providers/Microsoft.Management/managementGroups/${var.management_group_id}"
  subscription_id     = "/subscriptions/${azurerm_subscription.main.subscription_id}"
}

# Grab the newly created subscription details ready to output
data "azurerm_subscription" "newsubscription" {
  subscription_id = azurerm_subscription.main.subscription_id
}