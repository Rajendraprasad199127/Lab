terraform {
  backend "remote" {
    hostname     = "iac.wpp.cloud"
    organization = "WPP-WPPIT-Core"

    workspaces {
      name = "wpp-it-azure-subscription-vending-pipeline"
    }
  }
}