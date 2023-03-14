# This file contains a list from which to maintain subscriptions
# (Grey) gry Subscriptions Only
opgroup = "gry"
subscription_list = [
  {
    # Production IaaS Subscription
    subscription_name                   = "sub-gry-gry-lz-cap-p-001"
    management_group_id                 = "mg-wppit-lz-mg-gry-lz-p"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 1
  },
  {
    # Production Connectivity Subscription
    subscription_name                   = "sub-wpp-gry-plat-conn-p-001"
    management_group_id                 = "wppit-connectivity"
    opgroup                             = "gry"
    is_connectivity_sub                 = "true"
    connectivity_hub_locations          = ["ase", "gwc", "ue2", "uks"]
    enable_management_group_association = true
    key                                 = 2
  },
  {
    # Migration IaaS Subscription
    subscription_name                   = "sub-gry-gry-lz-cap-m-001"
    management_group_id                 = "mg-wppit-lz-mg-gry-lz-m"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 3
  }
]