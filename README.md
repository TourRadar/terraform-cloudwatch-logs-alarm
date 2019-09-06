# terraform-cloudwatch-logs-alarm
Terraform module to automate creating alarms based on cloudwatch logs

## Example usage
```terraform
module "terraform-cloudwatch-logs-alarm" {
  source = "github.com/TourRadar/terraform-cloudwatch-logs-alarm"
  service_name = "your service"
  cluster_name = "your cluster"
  actions      = ["snsarn etc"]
  alarm_prefix = "MyAlarmPrefix"
  tags = {
    Project = "SomeProject"
  }
}
```
