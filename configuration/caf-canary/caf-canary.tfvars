# This file contains a list from which to maintain subscriptions
# CAF Subscriptions Only
opgroup = "wpp"
subscription_list = [
  {
    subscription_name                   = "sub-wpp-wppit-plat-mgmt-d-001"
    management_group_id                 = "wppitesdev-management"
    is_connectivity_sub                 = "false"
    key                                 = 1
    enable_management_group_association = true
  },
  {
    subscription_name                   = "sub-wpp-wppit-plat-iam-d-001"
    management_group_id                 = "wppitesdev-identity"
    is_connectivity_sub                 = "false"
    key                                 = 2
    enable_management_group_association = true
  },
  {
    subscription_name                   = "sub-wpp-wppit-plat-conn-d-001"
    management_group_id                 = "wppitesdev-connectivity"
    is_connectivity_sub                 = "true"
    connectivity_hub_locations          = ["uks"]
    key                                 = 3
    enable_management_group_association = true
  },
  {
    subscription_name                   = "sub-wpp-wppit-sandbox-x-001"
    management_group_id                 = "wppitesdev-sandboxes"
    is_connectivity_sub                 = "false"
    key                                 = 4
    enable_management_group_association = true
  }
]
