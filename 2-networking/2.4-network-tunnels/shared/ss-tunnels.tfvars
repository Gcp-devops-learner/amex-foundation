
sharedproject_id = "dc-prj-ss-shared-vpc-dc6b"


/*
ss_router_east_asn = "64530"
ss_router_central_asn = "64531" 

region1 = "us-east4"
region2 = "us-central1"

ss_east_cloud_router_name = "ss-vpn-east-router1"
ss_central_cloud_router_name = "ss-vpn-central-router1"
*/

##################for Shared (SS)


## ss_router_central_asn = 64530
## ss_router_east_asn    = 64531

east_ss_router_interface1_iprange = "169.254.0.10/30"
east_ss_router_interface2_iprange = "169.254.0.14/30"

central_ss_router_interface1_iprange = "169.254.1.10/30"
central_ss_router_interface2_iprange = "169.254.1.14/30"

east_ss_router_peer1_ip           = "169.254.0.11"
east_ss_router_peer2_ip           = "169.254.0.15"

central_ss_router_peer1_ip        = "169.254.1.11"
central_ss_router_peer2_ip        = "169.254.1.15"


##################for lab (E0)


## e0_router_central_asn = 64721
## e0_router_east_asn    = 64720

east_lab_router_interface1_iprange     = "169.254.0.10/30"
east_lab_router_interface2_iprange     = "169.254.0.14/30"

central_lab_router_interface1_iprange  = "169.254.1.10/30"
central_lab_router_interface2_iprange  = "169.254.1.14/30"

east_lab_router_peer1_ip    = "169.254.0.11"
east_lab_router_peer2_ip    = "169.254.0.15"

central_lab_router_peer1_ip = "169.254.1.11"
central_lab_router_peer2_ip = "169.254.1.15"


/*
#############for dev (E1)


## e1_router_central_asn = 64731
## e1_router_east_asn = 64730


east_dev_router_interface1_iprange = "169.254.2.9/30"
east_dev_router_peer1_ip           = "169.254.2.10"
east_dev_router_interface2_iprange = "169.254.2.13/30"
east_dev_router_peer2_ip           = "169.254.2.14"

central_dev_router_interface1_iprange = "169.254.2.17/30"
central_dev_router_peer1_ip           = "169.254.2.18"
central_dev_router_interface2_iprange = "169.254.2.21/30"
central_dev_router_peer2_ip           = "169.254.2.22"
*/