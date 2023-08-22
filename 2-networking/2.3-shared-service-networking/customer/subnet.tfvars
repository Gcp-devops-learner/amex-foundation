project_id = "dc-prj-ss-shared-vpc-dc6b"


subnets = [
        {
            subnet_name           = "ss-subnet-01"
            subnet_ip             = "10.10.61.0/28"
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
            subnet_name           = "ss-subnet-02"
            subnet_ip             = "10.10.71.0/28"
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

service_projects = ["dc-prj-ss-shared-vpc-dc6b",]




