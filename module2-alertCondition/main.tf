

resource "newrelic_nrql_alert_condition" "alert_condition" {
  
  policy_id                      = var.policy_id
  type                           = var.alert_condition.type
  name                           = var.alert_condition.name
  description                    = var.alert_condition.description
  runbook_url                    = var.alert_condition.runbook_url
  enabled                        = var.alert_condition.enabled
  violation_time_limit_seconds   = var.alert_condition.violation_time_limit_seconds
  fill_option                    = var.alert_condition.fill_option
  fill_value                     = var.alert_condition.fill_value
  aggregation_window             = var.alert_condition.aggregation_window
  aggregation_method             = var.alert_condition.aggregation_method
  aggregation_delay              = var.alert_condition.aggregation_delay
  expiration_duration            = var.alert_condition.expiration_duration
  open_violation_on_expiration   = var.alert_condition.open_violation_on_expiration
  close_violations_on_expiration = var.alert_condition.close_violations_on_expiration
  slide_by                       = var.alert_condition.slide_by


  nrql {
    query = var.alert_condition.nrql
  }

    warning  {
    operator              = var.alert_condition.operator1
    threshold             = var.alert_condition.threshold1
    threshold_duration    = var.alert_condition.threshold_duration1
    threshold_occurrences = var.alert_condition.threshold_occurrences1
  }
 

  critical {
    operator              = var.alert_condition.operator2
    threshold             = var.alert_condition.threshold2
    threshold_duration    = var.alert_condition.threshold_duration2
    threshold_occurrences = var.alert_condition.threshold_occurrences2
   
  }

}


