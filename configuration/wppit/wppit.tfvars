# This file contains a list from which to maintain subscriptions
opgroup = "wppit"

subscription_list = [
  {
    subscription_name                   = "sub-wpp-wppit-plat-conn-s-001"
    management_group_id                 = "wppit-connectivity"
    is_connectivity_sub                 = true
    environment                         = "Staging"
    connectivity_hub_locations          = ["uks", "ase"]
    enable_management_group_association = true
    key                                 = 1
  },
  {
    subscription_name                   = "sub-wpp-wppit-plat-avs-s-001"
    management_group_id                 = "mg-wppit-lz-mg-wppit-avs"
    is_connectivity_sub                 = "false"
    is_avs_enabled                      = true
    enable_management_group_association = true
    key                                 = 2
  },
  {
    subscription_name                   = "sub-wpp-wppit-plat-conn-d-001"
    management_group_id                 = "wppit-connectivity"
    is_connectivity_sub                 = "true"
    environment                         = "Development"
    connectivity_hub_locations          = ["uks"]
    enable_management_group_association = true
    key                                 = 3
  }
]
