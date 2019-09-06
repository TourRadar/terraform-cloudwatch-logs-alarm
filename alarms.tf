locals {
  metric = aws_cloudwatch_log_metric_filter.filter.metric_transformation[0]
}

resource "aws_cloudwatch_metric_alarm" "alarm" {
  for_each            = var.alarm_checks
  alarm_name          = "${var.alarm_prefix}: ${each.key} ${var.alarm_title}"
  comparison_operator = var.alarm_comparison_operator
  evaluation_periods  = var.alarm_evaluation_periods
  threshold           = each.value
  metric_name         = local.metric.name
  namespace           = local.metric.namespace
  period              = var.alarm_period
  statistic           = var.alarm_statistic
  alarm_description   = "Priority: ${each.key}  ${var.alarm_description}"
  treat_missing_data  = var.alarm_treat_missing_data
  alarm_actions       = var.actions
  ok_actions          = var.ok_actions
  tags                = var.tags
}