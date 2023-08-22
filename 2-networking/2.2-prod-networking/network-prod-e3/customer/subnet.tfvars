prodproject_id = "dc-prj-p-shared-vpc-0e94"


subnets = [
        {
            subnet_name           = "e3-subnet-01"
            subnet_ip             = "10.10.20.0/28"
            subnet_region         = "us-east4"
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
            description           = "This subnet has a description"
            subnet_flow_logs          = "true"
            subnet_flow_logs_interval = "INTERVAL_10_MIN"
            subnet_flow_logs_sampling = 0.7
            subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
        },
        {
            subnet_name           = "e3-subnet-02"
            subnet_ip             = "10.10.10.0/28"
            subnet_region         = "us-east4"
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
            description           = "This subnet has a description"
            subnet_flow_logs          = "true"
            subnet_flow_logs_interval = "INTERVAL_10_MIN"
            subnet_flow_logs_sampling = 0.7
            subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
        }
]

service_projects = ["dc-prj-p-5954-posfrdmdl-344d",]