module vcn_local_private {
    source = "../tf-vcn"
    compartment_id = var.compartment_id
    region = var.region
    vcn_name = var.vcn_name
    vcn_dns_label = var.vcn_dns_label
    create_internet_gateway = var.create_internet_gateway
    internet_gateway_display_name = var.internet_gateway_display_name
    nat_gateway_display_name = var.nat_gateway_display_name
    create_nat_gateway = var.create_nat_gateway
    create_service_gateway = var.create_service_gateway
    cidr = var.cidr
    private_subnet_cidr = var.private_subnet_cidr
    prohibit_public_ip_on_vnic_private_subnet = var.prohibit_public_ip_on_vnic_private_subnet
    private_security_list_name = var.private_security_list_name
    private_subnet_name = var.private_subnet_name
    public_subnet_name = var.private_subnet_name
    public_security_list_name = var.public_security_list_name
    public_subnet_cidr = var.public_subnet_cidr
    prohibit_public_ip_on_vnic_public_subnet = var.prohibit_public_ip_on_vnic_public_subnet

}
data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

resource "oci_core_instance" "private_oraclelinux_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[1].name
    compartment_id = var.compartment_id
    shape = "VM.Standard.E2.1.Micro"
    source_details {
        source_id = var.source_image_id
        source_type = "image"
    }

  #  # Optional
    display_name = "private_oraclelinux_instance"
    create_vnic_details {
        assign_public_ip = false
        subnet_id = module.vcn_local_private.private-subnet-OCID
    }
   metadata = {
      ssh_authorized_keys = file("mihaiursuops.pub")
   }
    preserve_boot_volume = false
}


resource "oci_core_instance" "public_oraclelinux_instance" {
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[1].name
    compartment_id = var.compartment_id
    shape = "VM.Standard.E2.1.Micro"
    source_details {
        source_id = var.source_image_id
        source_type = "image"
    }

    display_name = "public_oraclelinux_instance"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = module.vcn_local_private.public-subnet-OCID
    }
   metadata = {
      ssh_authorized_keys = file("mihaiursuops.pub")
   }
    preserve_boot_volume = false
}

resource "oci_core_volume" "additional_50gb_volume_public_instance" {
    compartment_id = var.compartment_id
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[1].name
     vpus_per_gb = 10
     size_in_gbs = var.volume_size_gb

}

resource "oci_core_volume_attachment" "additional_50gb_volume_public_instance_attachment" {
   attachment_type = var.volume_attachment_attachment_type
   instance_id = oci_core_instance.public_oraclelinux_instance.id
   volume_id = oci_core_volume.additional_50gb_volume_public_instance.id

}
