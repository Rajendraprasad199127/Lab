/* 
This code calls the subscription vending module (./modules/subvend) in a loop passing in the subscriptions defined in 
the wpp_subscriptions.auto.tfvars input file.

The code has it's own state file (see backend.tf) meaning all subscriptions vended will be declared here.
Future releases could consider breaking sub vends out into smaller statefiles per opgroup (pending operating model guidance around this).

Subscriptions vended are also allocated a terraform Enterprise state file which will be consumed by the baseline resources module
 (external to this code).  This subscription specific state file should be considered for use by the platform team.
Future releases could consider also creating a statefile for use by the subscription consumer once allocated (customer).


WARNING: There is a risk of destroying (a.k.a cancelling) subscriptions when running this code. 
*/

module "subscription_vending" {
  source                              = "./modules/subvend"
  for_each                            = local.subscriptions
  key                                 = each.value.key
  subscription_name                   = each.value.subscription_name
  is_connectivity_sub                 = try(each.value.is_connectivity_sub, false)
  is_arc_enabled                      = try(each.value.is_arc_enabled, false)
  is_avs_enabled                      = try(each.value.is_avs_enabled, false)
  management_group_id                 = each.value.management_group_id
  billing_account_name                = var.billing_account_name
  enrollment_account_name             = var.enrollment_account_name
  enable_management_group_association = each.value.enable_management_group_association
  deploy_default_resources            = try(each.value.deploy_default_resources, false)
  tags                                = try(each.value.tags, {})
}

/* # Example input file (list of maps) from which to maintain subscriptions

sub_list = [
    {
    "subname"     = "sub-wpp-opgroup-101"
    "management_group_id" = "wpp-caf-landing-zones"
    "isconnectivitysub" = "false"
    },
    {
    "subname"     = "sub-wpp-opgroup-102"
    "management_group_id" = "wpp-caf-landing-zones"
    "isconnectivitysub" = "false"
    },
] */
