output "alarm" {
  value = aws_cloudwatch_metric_alarm.alarm
}

output "filter" {
  value = aws_cloudwatch_log_metric_filter.filter
}