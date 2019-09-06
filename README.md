# terraform-cloudwatch-logs-alarm
Terraform module to automate creating alarms based on cloudwatch logs

## Example usage
```terraform
module "terraform-cloudwatch-logs-alarm-emergency" {
  source       = "github.com/TourRadar/terraform-cloudwatch-logs-alarm"
  actions      = local.alarm_actions
  alarm_prefix = local.namespace
  tags         = local.tags

  namespace = local.namespace
  filter_log_group_name = aws_cloudwatch_log_group.app-logs.name
  filter_pattern = "{ $.level >= 600 }"
  filter_name = "AppLevelEmergency"
  alarm_title = "Application Level=Emergency errors count are above threshold"
  alarm_checks = {
    P1 = 1
  }
}
```
