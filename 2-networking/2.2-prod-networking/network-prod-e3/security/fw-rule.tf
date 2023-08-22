locals {
  network_name = data.terraform_remote_state.e3_network.outputs.prod-vpc-id
}

module "firewall_rules" {
  source       = "terraform-google-modules/network/google//modules/firewall-rules"
  project_id   = var.project_id
  network_name = local.network_name
  rules = [
      
      for r in var.rules:{
    name                    = r.name
    description             = r.description
    direction               = r.direction
    priority                = r.priority
    ranges                  = r.ranges
    source_tags             = r.source_tags
    source_service_accounts = r.source_service_accounts
    target_tags             = r.target_tags
    target_service_accounts = r.target_service_accounts
    allow = r.allow
    deny = r.deny
    log_config = r.log_config
  }]
}