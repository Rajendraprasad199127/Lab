output "subscriptions" {
  value = [for val in module.subscription_vending : { "${val.subscription_name}" = val.subscription_id }]
}

output "subscription_count" {
  value = length([for val in module.subscription_vending : { "${val.subscription_name}" = val.subscription_id }])
}
