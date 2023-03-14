module "subscription_vending" {
  source                  = "../"
  subname                 = "testsub"
  isconnectivitysub       = true
  management_group_id     = "123"
  billing_account_name    = "456"
  enrollment_account_name = "enrol_name"
  deploy_default_resource = true
}