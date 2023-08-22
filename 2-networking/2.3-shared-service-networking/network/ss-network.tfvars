
delete_default_internet_gw = "true"

sharedproject_id = "dc-prj-ss-shared-vpc-f52c"

vpc_name = "gcp-np-ss-vpc"

region1 = "us-east4"
region2 = "us-central1"

ss_central_cloud_router_name = "ss-vpn-east-router1"
ss_east_cloud_router_name = "ss-vpn-central-router1"

ss_east_cloud_inter_connect_router_name = "ss-inter-connect-east-router1"
ss_central_cloud_inter_connect_router_name = "ss-inter-connect-central-router1"


ss_router_central_asn = 64530
ss_router_east_asn    = 64531

/*
## Prod Router (E3)

east_router_interface1_iprange    = "169.254.0.2/30"
east_router_interface2_iprange    = "169.254.0.6/30"
central_router_interface1_iprange = "169.254.1.2/30"
central_router_interface2_iprange = "169.254.1.6/30"

east_router_peer1_ip    = "169.254.0.1"
east_router_peer2_ip    = "169.254.0.5"
central_router_peer1_ip = "169.254.1.1"
central_router_peer2_ip = "169.254.1.5"

#############for dev (E1)


## e1_router_central_asn = 64731
## e1_router_east_asn = 64730


east_dev_router_interface1_iprange = "169.254.1.9/30"
east_dev_router_peer1_ip           = "169.254.1.10"
east_dev_router_interface2_iprange = "169.254.1.13/30"
east_dev_router_peer2_ip           = "169.254.1.14"

central_dev_router_interface1_iprange = "169.254.1.17/30"
central_dev_router_peer1_ip           = "169.254.1.18"
central_dev_router_interface2_iprange = "169.254.1.21/30"
central_dev_router_peer2_ip           = "169.254.1.22"

#############for test (E2)

## e2_router_central_asn = 64741
## e2_router_east_asn = 64740


east_test_router_interface1_iprange = "169.254.2.9/30"
east_test_router_peer1_ip           = "169.254.2.10"
east_test_router_interface2_iprange = "169.254.2.13/30"
east_test_router_peer2_ip           = "169.254.2.14"

central_test_router_interface1_iprange = "169.254.2.17/30"
central_test_router_peer1_ip           = "169.254.2.18"
central_test_router_interface2_iprange = "169.254.2.21/30"
central_test_router_peer2_ip           = "169.254.2.22"


##################for lab (E0)


## e0_router_central_asn = 64721
## e0_router_east_asn    = 64720


east_lab_router_interface1_iprange = "169.254.3.9/30"
east_lab_router_peer1_ip           = "169.254.3.10"
east_lab_router_interface2_iprange = "169.254.3.13/30"
east_lab_router_peer2_ip           = "169.254.3.14"

central_lab_router_interface1_iprange = "169.254.3.17/30"
central_lab_router_peer1_ip           = "169.254.3.18"
central_lab_router_interface2_iprange = "169.254.3.21/30"
central_lab_router_peer2_ip           = "169.254.3.22"
*/

service_projects = ["dc-prj-ss-shared-vpc-dc6b",]