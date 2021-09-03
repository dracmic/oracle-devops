resource "oci_core_subnet" "vcn-private-subnet"{

  # Required
  compartment_id = var.compartment_id
  vcn_id = module.vcn.vcn_id
  cidr_block = var.private_subnet_cidr
  route_table_id = module.vcn.nat_route_id
  security_list_ids = [oci_core_security_list.private-security-list.id]
  prohibit_public_ip_on_vnic = var.prohibit_public_ip_on_vnic_private_subnet
  display_name = var.private_subnet_name
}
