resource "oci_core_subnet" "vcn-public-subnet"{
  compartment_id = var.compartment_id
  vcn_id = module.vcn.vcn_id
  cidr_block = var.public_subnet_cidr
  route_table_id =  module.vcn.ig_route_id
  security_list_ids = [oci_core_security_list.public-security-list.id]
  prohibit_public_ip_on_vnic = var.prohibit_public_ip_on_vnic_public_subnet
  display_name = var.public_subnet_name
}
