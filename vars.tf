variable "actions" {
  description = "List of actions what should be executed"
  type        = list(string)
}

variable "ok_actions" {
  description = "List of actions what should be executed"
  type        = list(string)
  default     = []
}

variable "namespace" {
  type = string
}

variable "filter_log_group_name" {
  type = string
}

variable "filter_pattern" {
  type    = string
  default = ""
}

variable "filter_name" {
  type = string
}


variable "filter_metric_name" {
  type    = string
  default = ""
}

variable "filter_value" {
  type = string
  default = "1"
}


variable "filter_default_value" {
  type    = number
  default = 1
}


variable "tags" {
  default = {}
}

variable "alarm_prefix" {
  type = string
}

variable "alarm_checks" {
  type = map(number)
  default = {
    P1 = 5
    P2 = 4
    P3 = 3
    P4 = 2
    P5 = 1
  }
}

variable "alarm_statistic" {
  type    = string
  default = "Sum"
}

variable "alarm_evaluation_periods" {
  type    = number
  default = 1
}

variable "alarm_comparison_operator" {
  type    = string
  default = "GreaterThanOrEqualToThreshold"
}


variable "alarm_title" {
  type = string
}

variable "alarm_alarm_description" {
  type    = string
  default = ""
}