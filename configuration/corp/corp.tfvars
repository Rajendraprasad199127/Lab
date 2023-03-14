# This file contains a list from which to maintain subscriptions
# (Special Agencies) corp Subscriptions Only
opgroup = "corp"
subscription_list = [
  {
    # Production IaaS Subscription
    subscription_name                   = "sub-wpp-corp-subopco-lz-cap-p-001"
    management_group_id                 = "mg-wppit-lz-mg-corp-lz-p"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 1
  },
  {
    # Production Connectivity Subscription
    subscription_name                   = "sub-wpp-corp-plat-conn-p-001"
    management_group_id                 = "wppit-connectivity"
    is_connectivity_sub                 = "true"
    connectivity_hub_locations          = ["ase", "ue2", "uks"]
    enable_management_group_association = true
    key                                 = 2
  },
  {
    # BtodGroup Migration Iaas Subscription
    subscription_name                   = "sub-btodgroup-lz-cap-m-001"
    management_group_id                 = "mg-wppit-lz-mg-corp-lz-m"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 3
  }
]