resource "ibm_network_gateway" "gateway" {
  name = "rt-test-gw"

  members {
    hostname             = "gw1"
    domain               = "rst.com"
    datacenter           = "dal13"
    network_speed        = 10000
    private_network_only = false
    tcp_monitoring       = true
    process_key_name     = "INTEL_XEON_5218_2_30"
    package_key_name     = "VIRTUAL_ROUTER_APPLIANCE_10_GPBS"
    os_key_name          = "OS_VIRTUAL_ROUTER_APPLIANCE_20_X_UP_TO_20_GBPS_SUBSCRIPTION_EDITION_64_BIT"
    redundant_network    = false
    disk_key_names       = ["HARD_DRIVE_2_00_TB_SATA_2", "HARD_DRIVE_2_00_TB_SATA_2"]
    public_bandwidth     = 20000
    memory               = 32
    tags                 = ["owner:ryantiffany"]
    ipv6_enabled         = true
    storage_groups {
    array_type_id = 2
    hard_drives = [0, 1]
    array_size  = 2000

  }
  }
}
