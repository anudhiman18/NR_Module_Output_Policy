policy_name = "new_policy"

alert_condition = {
    
    # account_id               = 4422835
    # policy_id                = newrelic_alert_policy.my_policy.id
    
    type = "static"
    description    = "alert_condition"
    runbook_url    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    name                            = "critical and warning"
    nrql                           = "SELECT average(duration) FROM Transaction where appName = 'Your App'"

      operator1              = "above"
      threshold1             = 5.5
      threshold_duration1    = 300
      threshold_occurrences1 = "ALL"
    # warning_enabled = true
      operator2              = "above"
      threshold2             = 3.5
      threshold_duration2    = 600
      threshold_occurrences2 = "ALL"
}

