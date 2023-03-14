terraform {
  backend "remote" {
    hostname     = "iac.wpp.cloud"
    organization = "WPP-WPPIT-Core"
    workspaces {
      prefix = "wpp-it-azure-subscription-vending-"
    }
  }
}