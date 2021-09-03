output "vcn_id" {
  description = "OCID of the VCN that is created"
  value = module.vcn_local_private.vcn_id
}
output "private-subnet-name" {
  value = module.vcn_local_private.private-subnet-name
}
output "private-security-list-name" {
  value = module.vcn_local_private.private-security-list-name
}
output "private-security-list-OCID" {
  value = module.vcn_local_private.private-security-list-OCID
}

output "private-subnet-OCID" {
  value = module.vcn_local_private.private-subnet-OCID
}
output "public-subnet-name" {
  value = module.vcn_local_private.public-subnet-name
}
output "public-subnet-OCID" {
  value = module.vcn_local_private.public-subnet-OCID
}
output "public-security-list-name" {
  value = module.vcn_local_private.public-security-list-name
}
output "public-security-list-OCID" {
  value = module.vcn_local_private.public-security-list-OCID
}

output "private_instance_id" {
  value = oci_core_instance.private_oraclelinux_instance.id
}
output "public_instance_id" {
  value = oci_core_instance.public_oraclelinux_instance.id
}
