module "observability_instances" {
  source                     = "git::https://github.com/terraform-ibm-modules/terraform-ibm-observability-instances?ref=main"
  activity_tracker_provision = false
  region                     = var.region
  resource_group_id          = local.resource_group_id

  logdna_instance_name = "${local.project_prefix}-logging-instance"
  logdna_tags          = local.tags
  logdna_plan          = "7-day"

  sysdig_instance_name = "${local.project_prefix}-monitoring-instance"
  sysdig_tags          = local.tags
  sysdig_plan          = "graduated-tier"
}
