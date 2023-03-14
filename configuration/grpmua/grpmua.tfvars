# This file contains a list from which to maintain subscriptions
# GroupMUA Subscriptions Only
opgroup = "grpmua" # GroupM Ukraine
subscription_list = [
  {
    subscription_name                   = "sub-grpmua-groupm-lz-uacloud-p-01"
    management_group_id                 = "mg-wppit-lz-mg-grpm-lz-p"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 1
    tags = {
      "businessowner"  = "Yuriy Tmur yuriy.tmur@groupm.com"
      "serviceowner"   = "Yuriy Tmur yuriy.tmur@groupm.com"
      "cartesis"       = "GMUAS"
      "cartesiscode"   = "GMUAS"
      "city"           = "Kyiv"
      "country"        = "UA"
      "environment"    = "production"
      "financeowner"   = "Nataliya Ganichkina nataliya.ganichkina@groupm.com"
      "opco"           = "GroupM"
      "opgroup"        = "GroupM"
      "technicalowner" = "Yuriy Tmur yuriy.tmur@groupm.com"
      "techowner"      = "Yuriy Tmur yuriy.tmur@groupm.com"
      "workloadname"   = "UA Cloud"
      "servicename"    = "UA Cloud"
      "projectcode"    = "Ua_cloud"
    }
  },
  {
    subscription_name                   = "sub-wpp-grpmua-plat-conn-p-001"
    management_group_id                 = "wppit-connectivity"
    is_connectivity_sub                 = true
    connectivity_hub_locations          = ["gwc"]
    enable_management_group_association = true
    key                                 = 2
    tags = {
      "businessowner"  = "Yuriy Tmur yuriy.tmur@groupm.com"
      "cartesis"       = "GMUAS"
      "city"           = "Kyiv"
      "country"        = "UA"
      "environment"    = "production"
      "financeowner"   = "Nataliya Ganichkina nataliya.ganichkina@groupm.com"
      "opco"           = "GroupM"
      "opgroup"        = "GroupM"
      "technicalowner" = "Yuriy Tmur yuriy.tmur@groupm.com"
      "workloadname"   = "UA Cloud"
    }
  },
  {
    subscription_name                   = "sub-grpmua-groupm-lz-uacloud-d-01"
    management_group_id                 = "mg-wppit-lz-mg-grpm-lz-d"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 3
    tags = {
      "businessowner"  = "Yuriy Tmur yuriy.tmur@groupm.com"
      "serviceowner"   = "Yuriy Tmur yuriy.tmur@groupm.com"
      "cartesis"       = "GMUAS"
      "cartesiscode"   = "GMUAS"
      "city"           = "Kyiv"
      "country"        = "UA"
      "environment"    = "development"
      "financeowner"   = "Nataliya Ganichkina nataliya.ganichkina@groupm.com"
      "opco"           = "GroupM"
      "opgroup"        = "GroupM"
      "technicalowner" = "Yuriy Tmur yuriy.tmur@groupm.com"
      "techowner"      = "Yuriy Tmur yuriy.tmur@groupm.com"
      "workloadname"   = "UA Cloud"
      "servicename"    = "UA Cloud"
      "projectcode"    = "Ua_cloud"
    }
  }
]
