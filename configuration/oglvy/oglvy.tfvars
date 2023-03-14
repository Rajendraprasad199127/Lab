# This file contains a list from which to maintain subscriptions
# (O&M) oglvy Subscriptions Only
opgroup = "oglvy"
subscription_list = [
  {
    # Production IaaS Subscription
    subscription_name                   = "sub-oglvy-oglvy-lz-cap-p-001"
    management_group_id                 = "mg-wppit-lz-mg-oglvy-lz-p"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 1
  },
  {
    # Production Connectivity Subscription
    subscription_name                   = "sub-wpp-oglvy-plat-conn-p-001"
    management_group_id                 = "wppit-connectivity"
    is_connectivity_sub                 = true
    connectivity_hub_locations          = ["ase", "gwc", "ue2", "uks"]
    enable_management_group_association = true
    key                                 = 2
  },
  {
    # Production AVS Subscription
    subscription_name                   = "sub-wpp-oglvy-plat-avs-p-001"
    management_group_id                 = "mg-wppit-lz-mg-wppit-avs"
    is_connectivity_sub                 = "false"
    is_avs_enabled                      = true
    enable_management_group_association = true
    key                                 = 3
  },
  {
    # Production ARC Subscription
    subscription_name                   = "sub-wpp-oglvy-plat-arc-p-001"
    management_group_id                 = "mg-wppit-lz-mg-wppit-arc"
    is_connectivity_sub                 = "false"
    is_avs_enabled                      = false
    enable_management_group_association = true
    key                                 = 4
  },
  {
    # Production Migration Subscription
    subscription_name                   = "sub-oglvy-oglvy-lz-cap-m-001"
    management_group_id                 = "mg-wppit-lz-mg-oglvy-lz-m"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 5
  }

]