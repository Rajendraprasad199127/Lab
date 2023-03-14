//# This TF code creates a workspace for each subscription in the list
//# The data block reads the TFE org in, the resource creates workspace.
//
data "tfe_organization" "organization" {
  name = var.organization_name
}

resource "tfe_workspace" "tfe_workspace" {
  depends_on     = [module.subscription_vending]
  for_each       = local.subscriptions
  name           = "wpp-it-azure-baseline-resources-${each.value.subscription_name}"
  organization   = data.tfe_organization.organization.name
  tag_names      = ["azure", "subscriptionvending"]
  execution_mode = "local"
}

resource "tfe_workspace" "firewall" {
  depends_on     = [module.subscription_vending]
  for_each       = local.connectivity_subscriptions_by_hub_location
  name           = "wpp-it-azure-firewall-${var.opgroup}-${each.value.connectivity_hub_suffix}"
  organization   = data.tfe_organization.organization.name
  tag_names      = ["azure"]
  execution_mode = "local"
}

resource "tfe_workspace" "connectivity" {
  depends_on     = [module.subscription_vending]
  for_each       = local.connectivity_subscriptions_by_hub_location
  name           = "wpp-it-azure-connectivity-${var.opgroup}-${each.value.connectivity_hub_suffix}"
  organization   = data.tfe_organization.organization.name
  tag_names      = ["azure"]
  execution_mode = "local"
}
