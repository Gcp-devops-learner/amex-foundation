# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.


locals {
  prod_folder = module.first_level_folder.folders_map.fldr-prod.id
  org_id      = var.org_id
}


resource "google_organization_policy" "Resource-Location-Restriction" {
  org_id     = local.org_id
  constraint = "gcp.resourceLocations"

  list_policy {
    allow {
      values = []
    }
  }
}

resource "google_organization_policy" "serviceuser-services" {
  org_id     = local.org_id
  constraint = "serviceuser.services"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GAE-Disable-Source-Code-Download" {
  org_id     = local.org_id
  constraint = "appengine.disableCodeDownload"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "GCF-Allowed-ingress-settings" {
  org_id     = local.org_id
  constraint = "cloudfunctions.allowedIngressSettings"

  list_policy {
    allow {
      values = []
    }
  }
}

resource "google_organization_policy" "GCF-Allowed-VPC-Connector-egress-settings" {
  org_id     = local.org_id
  constraint = "cloudfunctions.allowedIngressSettings"

  list_policy {
    allow {
      values = []
    }
  }
}

resource "google_organization_policy" "GCF-Require-VPC-Connector" {
  org_id     = local.org_id
  constraint = "cloudfunctions.requireVPCConnector"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "Cloud-SQL-Restrict-Public-IP-access" {
  org_id     = local.org_id
  constraint = "sql.restrictPublicIp"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "GCE-Disable-Guest-Attributes-of-Compute-Engine-metadata" {
  org_id     = local.org_id
  constraint = "compute.disableGuestAttributesAccess"

  boolean_policy {
    enforced = false
  }
}

resource "google_organization_policy" "GCE-Disable-Internet-Network-Endpoint-Groups" {
  org_id     = local.org_id
  constraint = "compute.disableInternetNetworkEndpointGroup"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "GCE-Disable-VM-nested-virtualization" {
  org_id     = local.org_id
  constraint = "compute.disableNestedVirtualization"

  boolean_policy {
    enforced = true
  }
}

resource "google_folder_organization_policy" "GCE-Disable-VM-serial-port-access" {
  folder     = local.prod_folder
  constraint = "compute.disableSerialPortAccess"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "GCE-Disable-VM-serial-port-logging-to-Stackdriver" {
  org_id     = local.org_id
  constraint = "compute.disableSerialPortLogging"

  boolean_policy {
    enforced = false
  }
}

resource "google_organization_policy" "GCE-Enables-OS-Login-to-VMs-on-all-newly-created-Projects" {
  org_id     = local.org_id
  constraint = "compute.requireOsLogin"

  boolean_policy {
    enforced = false
  }
}

resource "google_folder_organization_policy" "Compute-requireShieldedVm" {
  folder     = local.prod_folder
  constraint = "compute.requireShieldedVm"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "GCE-VMs-that-are-allowed-to-use-Authenticated-Google-Connection" {
  org_id     = local.org_id
  constraint = "compute.restrictAuthenticatedGoogleConnection"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-Cloud-NAT-usage" {
  org_id     = local.org_id
  constraint = "compute.restrictCloudNATUsage"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-Dedicated-Interconnect-usage-in-subnetworks" {
  org_id     = local.org_id
  constraint = "compute.restrictDedicatedInterconnectUsage"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-Compute-Engine-VMs-that-are-allowed-to-use-Direct-Google-Access" {
  org_id     = local.org_id
  constraint = "compute.restrictDirectGoogleAccess"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-Load-Balancer-Creation-Based-on-Load-Balancer-Types" {
  org_id     = local.org_id
  constraint = "compute.restrictLoadBalancerCreationForTypes"

  list_policy {
    allow {
      values = ["in:INTERNAL"]
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-Non-Confidential-Computing" {
  org_id     = local.org_id
  constraint = "compute.restrictNonConfidentialComputing"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-Partner-Interconnect-usage" {
  org_id     = local.org_id
  constraint = "compute.restrictPartnerInterconnectUsage"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-Protocol-Forwarding" {
  org_id     = local.org_id
  constraint = "compute.restrictProtocolForwardingCreationForTypes"

  list_policy {
    allow {
      values = ["in:INTERNAL"]
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-Shared-VPC-Host-Projects" {
  org_id     = local.org_id
  constraint = "compute.restrictSharedVpcHostProjects"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-Shared-VPC-Subnetworks" {
  org_id     = local.org_id
  constraint = "compute.restrictSharedVpcSubnetworks"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-VPC-peering-usage" {
  org_id     = local.org_id
  constraint = "compute.restrictVpcPeering"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-VPN-Peer-IPs" {
  org_id     = local.org_id
  constraint = "compute.restrictVpnPeerIPs"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Skip-default-network-creation" {
  org_id     = local.org_id
  constraint = "compute.skipDefaultNetworkCreation"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "GCE-Compute-Storage-resource-use-restrictions" {
  org_id     = local.org_id
  constraint = "compute.storageResourceUseRestrictions"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Compute-Trusted-Image-Projects" {
  org_id     = local.org_id
  constraint = "compute.trustedImageProjects"

  list_policy {
    allow {
      values = ["zyx-l-600001687-poc"]
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-VM-IP-Forwarding" {
  org_id     = local.org_id
  constraint = "compute.vmCanIpForward"

  list_policy {
    deny {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Restrict-external-IPs-for-VM-instances" {
  org_id     = local.org_id
  constraint = "compute.vmExternalIpAccess"

  list_policy {
    deny {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-Compute-RestrictXpn-Project-LienRemoval" {
  org_id     = local.org_id
  constraint = "compute.restrictXpnProjectLienRemoval"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "GCE-IAM-Allow-Service-Account-Credential-Lifetime-Extension" {
  org_id     = local.org_id
  constraint = "iam.allowServiceAccountCredentialLifetimeExtension"

  list_policy {
    deny {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-IAM-Allowed-Policy-Member-Domains" {
  org_id     = local.org_id
  constraint = "iam.allowedPolicyMemberDomains"

  list_policy {
    allow {
      values = ["aexp.com"]
    }
  }
}

resource "google_organization_policy" "GCE-IAM-Disable-Service-Account-Creation" {
  org_id     = local.org_id
  constraint = "iam.disableServiceAccountCreation"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-IAM-Disable-Service-Account-Key-Creation" {
  org_id     = local.org_id
  constraint = "iam.disableServiceAccountKeyCreation"

  list_policy {
    deny {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-IAM-Disable-Service-Account-KeyUpload" {
  org_id     = local.org_id
  constraint = "iam.disableServiceAccountKeyUpload"

  list_policy {
    deny {
      all = true
    }
  }
}

resource "google_organization_policy" "GCE-IAM-DisableWorkload-Identity-ClusterCreation" {
  org_id     = local.org_id
  constraint = "iam.disableWorkloadIdentityClusterCreation"

  boolean_policy {
    enforced = false
  }
}

resource "google_organization_policy" "GCE-IAM-AutomaticIam-Grants-For-Default-ServiceAccounts" {
  org_id     = local.org_id
  constraint = "iam.automaticIamGrantsForDefaultServiceAccounts"

  boolean_policy {
    enforced = false
  }
}

resource "google_organization_policy" "GCS-Detailed-Audit-Logging-Mode" {
  org_id     = local.org_id
  constraint = "gcp.detailedAuditLoggingMode"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "GCS-Retention-policy-duration-in-seconds" {
  org_id     = local.org_id
  constraint = "storage.retentionPolicySeconds"

  list_policy {
    deny {
      all = true
    }
  }
}

resource "google_organization_policy" "GCS-Enforce-Uniform-Bucket-Level-Accesse" {
  org_id     = local.org_id
  constraint = "storage.uniformBucketLevelAccess"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "Storage-Public-Access-Prevention" {
  org_id     = local.org_id
  constraint = "storage.publicAccessPrevention"

  boolean_policy {
    enforced = true
  }
}




