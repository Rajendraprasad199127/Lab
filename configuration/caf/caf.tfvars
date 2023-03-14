# This file contains a list from which to maintain subscriptions
# CAF Subscriptions Only
opgroup = "wpp"
subscription_list = [
  {
    subscription_name                   = "sub-wpp-wppit-plat-mgmt-p-001"
    management_group_id                 = "wppit-management"
    is_connectivity_sub                 = "false"
    key                                 = 1
    enable_management_group_association = true
  },
  {
    subscription_name                   = "sub-wpp-wppit-plat-iam-p-001"
    management_group_id                 = "wppit-identity"
    is_connectivity_sub                 = "false"
    key                                 = 2
    enable_management_group_association = true
  },
  {
    subscription_name                   = "sub-wpp-wppit-plat-conn-p-001"
    management_group_id                 = "wppit-connectivity"
    is_connectivity_sub                 = "true"
    connectivity_hub_locations          = ["uks"]
    key                                 = 3
    enable_management_group_association = true
  }
]
