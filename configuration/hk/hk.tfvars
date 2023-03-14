# This file contains a list from which to maintain subscriptions
# (HK) hk Subscriptions Only
opgroup = "hk"
subscription_list = [
  {
    # Production IaaS Subscription
    subscription_name                   = "sub-hk-hk-lz-cap-p-001"
    management_group_id                 = "mg-wppit-lz-mg-hk-lz-p"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 1
  },
  {
    # Production Connectivity Subscription
    subscription_name                   = "sub-wpp-hk-plat-conn-p-001"
    management_group_id                 = "wppit-connectivity"
    is_connectivity_sub                 = true
    connectivity_hub_locations          = ["ase", "gwc", "ue2", "uks"]
    enable_management_group_association = true
    key                                 = 2
  },
  {
    # Production AVS Subscription
    subscription_name                   = "sub-wpp-hk-plat-avs-p-001"
    management_group_id                 = "mg-wppit-lz-mg-wppit-avs"
    is_connectivity_sub                 = "false"
    is_avs_enabled                      = true
    enable_management_group_association = true
    key                                 = 3
  },
  {
    # Production ARC Subscription
    subscription_name                   = "sub-wpp-hk-plat-arc-p-001"
    management_group_id                 = "mg-wppit-lz-mg-wppit-arc"
    is_connectivity_sub                 = "false"
    is_avs_enabled                      = false
    enable_management_group_association = true
    key                                 = 4
  },
  {
    # HK Migration Iaas Subscription
    subscription_name                   = "sub-hk-lz-cap-m-001"
    management_group_id                 = "mg-wppit-lz-mg-hk-lz-m"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 5
  }
]