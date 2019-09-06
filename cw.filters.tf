resource "aws_cloudwatch_log_metric_filter" "filter" {
  name           = var.filter_name
  pattern        = var.filter_pattern
  log_group_name = var.filter_log_group_name

  metric_transformation {
    name          = var.filter_metric_name != "" ? var.filter_metric_name : var.filter_name
    namespace     = var.namespace
    value         = var.filter_value
    default_value = var.filter_default_value
  }
}