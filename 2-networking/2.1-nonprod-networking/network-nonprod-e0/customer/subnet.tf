locals {
    network_name = data.terraform_remote_state.e0_network.outputs.nonprod-e0-vpc
}

module "subnet-east" {

    source  = "terraform-google-modules/network/google//modules/subnets"

    project_id   = var.npproject_id
    network_name = local.network_name
    count = length(data.terraform_remote_state.ddi_subnets.outputs.subnets.us-east4)

    subnets = [
      {
      subnet_name           = data.terraform_remote_state.ddi_subnets.outputs.subnets.us-east4[count.index].name
      subnet_ip             = data.terraform_remote_state.ddi_subnets.outputs.subnets.us-east4[count.index].cidr
      subnet_region         = data.terraform_remote_state.ddi_subnets.outputs.subnets.us-east4[count.index].region_name
      subnet_private_access = "true"
      subnet_flow_logs      = "false"  
      }
    ]
    depends_on = [
      local.network_name
    ]
}

module "subnet-central" {

    source  = "terraform-google-modules/network/google//modules/subnets"

    project_id   = var.npproject_id
    network_name = local.network_name
    count = length(data.terraform_remote_state.ddi_subnets.outputs.subnets.us-central1)

    subnets = [
      {
      subnet_name           = data.terraform_remote_state.ddi_subnets.outputs.subnets.us-central1[count.index].name
      subnet_ip             = data.terraform_remote_state.ddi_subnets.outputs.subnets.us-central1[count.index].cidr
      subnet_region         = data.terraform_remote_state.ddi_subnets.outputs.subnets.us-central1[count.index].region_name
      subnet_private_access = "true"
      subnet_flow_logs      = "false"  
      }
    ]
    depends_on = [
      local.network_name
    ]
}

