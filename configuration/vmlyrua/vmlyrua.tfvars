# This file contains a list from which to maintain subscriptions
# VMLY&RUA (VMLY&R Ukraine) Subscriptions Only
opgroup = "vmlyrua" # VMLY&R Ukraine
subscription_list = [
  {
    subscription_name                   = "sub-vmlyrua-lz-uacloud-p-01"
    management_group_id                 = "mg-wppit-lz-mg-vmlyr-lz-p"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 1
    tags = {
      "businessowner"  = "valeriy.chubukin@vmlyr.com"
      "cartesis"       = "YAEUAHQ"
      "city"           = "Kyiv"
      "country"        = "UA"
      "environment"    = "production"
      "financeowner"   = "sergey.koval@vmlyr.com"
      "opco"           = "VMLYR Commerce Ukraine"
      "opgroup"        = "VMLYR"
      "technicalowner" = "valeriy.chubukin@vmlyr.com"
      "workloadname"   = "VMLYR UA Cloud"
    }
  },
  {
    subscription_name                   = "sub-wpp-vmlyrua-plat-conn-p-001"
    management_group_id                 = "wppit-connectivity"
    is_connectivity_sub                 = true
    connectivity_hub_locations          = ["gwc"]
    enable_management_group_association = true
    key                                 = 2
    tags = {
      "businessowner"  = "valeriy.chubukin@vmlyr.com"
      "cartesis"       = "YAEUAHQ"
      "city"           = "Kyiv"
      "country"        = "UA"
      "environment"    = "production"
      "financeowner"   = "sergey.koval@vmlyr.com"
      "opco"           = "VMLYR Commerce Ukraine"
      "opgroup"        = "VMLYR"
      "technicalowner" = "valeriy.chubukin@vmlyr.com"
      "workloadname"   = "VMLYR UA Cloud"
    }
  },
  {
    subscription_name                   = "sub-vmlyrua-lz-uacloud-d-01"
    management_group_id                 = "mg-wppit-lz-mg-vmlyr-lz-d"
    is_connectivity_sub                 = "false"
    enable_management_group_association = true
    key                                 = 3
    tags = {
      "businessowner"  = "valeriy.chubukin@vmlyr.com"
      "cartesis"       = "YAEUAHQ"
      "city"           = "Kyiv"
      "country"        = "UA"
      "environment"    = "development"
      "financeowner"   = "sergey.koval@vmlyr.com"
      "opco"           = "VMLYR Commerce Ukraine"
      "opgroup"        = "VMLYR"
      "technicalowner" = "valeriy.chubukin@vmlyr.com"
      "workloadname"   = "VMLYR UA Cloud"
    }
  }
]
