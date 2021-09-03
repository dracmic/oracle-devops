resource "oci_core_security_list" "public-security-list" {
  compartment_id = var.compartment_id
  vcn_id = module.vcn.vcn_id
  display_name = var.public_security_list_name
 egress_security_rules {
    stateless = false
    destination = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol = "all"
 }
   ingress_security_rules {
     stateless = false
     source = "10.0.0.0/16"
     source_type= "CIDR_BLOCK"
     protocol = "all"
}
 }
