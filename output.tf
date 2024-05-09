# output "policy_id" {
#     value =newrelic_alert_policy.policy_id
# }

output "policy_id" {
  value = module.module1-policy.policy_id
}
