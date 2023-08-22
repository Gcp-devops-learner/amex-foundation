sharedproject_id = "dc-prj-ss-shared-vpc-dc6b"
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
<<<<<<< HEAD
  }]

  service_projects = ["dc-prj-ss-shared-vpc-dc6b",]
=======
},]

route_name = "route-to-internet"
route_dest_ip = "199.36.153.4/30"
route_priority = "100"
>>>>>>> 997e399f00a543b19efbeda1b4a904db0951534b
