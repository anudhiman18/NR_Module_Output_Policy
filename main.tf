module "module1-policy" {
    source = "../module1-policy"
    policy_name = var.policy_name
  
}

module "module2-alert-condition" {
    source = "../module2-alert-condition"
    alert_condition =  var.alert_condition
    policy_id = module.module1-policy.policy_id

    # policy_id  = module1-policy.policy_id 
    # policy = module.newrelic_alert_policy.my_policy.id
}