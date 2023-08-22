project_id = "dc-prj-p-shared-vpc-0e94"
rules = [{
    name                    = "deny-everything-to-by-default"
    description             = "Deny everything to by default"
    direction               = "EGRESS"
    priority                = 65534
    ranges                  = ["0.0.0.0/0"]
    source_tags             = null
    source_service_accounts = null
    target_tags             = []
    target_service_accounts = null
    allow = []
    deny = [{
      protocol = "all"
      ports    = []
    }]
    log_config = {
      metadata = "INCLUDE_ALL_METADATA"
    }
  },
  {
    name                    = "deny-everything-from-by-default"
    description             = "Deny everything from by default"
    direction               = "INGRESS"
    priority                = 65534
    ranges                  = ["0.0.0.0/0"]
    source_tags             = null
    source_service_accounts = null
    target_tags             = []
    target_service_accounts = null
    allow = []
    deny = [{
      protocol = "all"
      ports    = []
    }]
    log_config = {
      metadata = "INCLUDE_ALL_METADATA"
    }
},]

route_name = "route-to-internet"
route_dest_ip = "199.36.153.4/30"
route_priority = "100"