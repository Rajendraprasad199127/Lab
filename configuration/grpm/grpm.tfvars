# This file contains a list from which to maintain subscriptions
# GroupM Subscriptions Only
opgroup = "grpm"
subscription_list = [
  {
    subscription_name                   = "sub-grpm-groupm-lz-cap-p-001"
    management_group_id                 = "mg-wppit-lz-mg-grpm-lz-p"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 1
  },
  {
    subscription_name                   = "sub-grpm-groupm-lz-cap-d-001"
    management_group_id                 = "mg-wppit-lz-mg-grpm-lz-d"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 2
  },
  {
    subscription_name                   = "sub-grpm-groupm-lz-cap-m-001"
    management_group_id                 = "mg-wppit-lz-mg-grpm-lz-m"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 3
  },
  {
    subscription_name                   = "sub-grpm-groupm-lz-cap-x-001"
    management_group_id                 = "mg-wppit-lz-mg-grpm-x"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 4
  },
  {
    subscription_name                   = "sub-wpp-grpm-plat-avs-p-001"
    management_group_id                 = "mg-wppit-lz-mg-wppit-avs"
    is_connectivity_sub                 = "false"
    is_avs_enabled                      = true
    enable_management_group_association = true
    key                                 = 5
  },
  {
    subscription_name                   = "sub-wpp-grpm-plat-conn-p-001"
    management_group_id                 = "wppit-connectivity"
    is_connectivity_sub                 = true
    connectivity_hub_locations          = ["ase", "gwc", "ue2", "uks"]
    enable_management_group_association = true
    key                                 = 6
  },
  {
    subscription_name                   = "sub-wpp-grpm-plat-arc-p-001"
    management_group_id                 = "mg-wppit-lz-mg-wppit-arc"
    is_connectivity_sub                 = "false"
    is_avs_enabled                      = false
    enable_management_group_association = true
    key                                 = 7
  },
  {
    subscription_name                   = "sub-wpp-grpm-plat-arc-d-001"
    management_group_id                 = "mg-wppit-lz-mg-wppit-arc"
    is_connectivity_sub                 = "false"
    is_avs_enabled                      = false
    enable_management_group_association = true
    key                                 = 8
  }
]