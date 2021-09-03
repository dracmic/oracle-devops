module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.0.0"
  compartment_id = var.compartment_id
  region = var.region
  vcn_name = var.vcn_name
  vcn_dns_label = var.vcn_dns_label
  create_internet_gateway = var.create_internet_gateway
  internet_gateway_display_name = var.internet_gateway_display_name
  nat_gateway_display_name = var.nat_gateway_display_name
  create_nat_gateway = var.create_nat_gateway
  create_service_gateway = var.create_service_gateway
  vcn_cidrs = var.cidr
}
