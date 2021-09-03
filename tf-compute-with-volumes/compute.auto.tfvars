cidr=["10.0.0.0/16"]
vcn_name="mihaiursu_test"
vcn_dns_label="muopstest"
create_internet_gateway=true
create_nat_gateway=true
create_service_gateway=true
internet_gateway_display_name="mihaiursu_ops_test_igw"
nat_gateway_display_name="mihaiursu_ops_test_natgw"
private_security_list_name="security_list_private_subnet"
public_security_list_name="security_list_public_subnet"
private_subnet_cidr="10.0.128.0/17"
public_subnet_cidr="10.0.0.0/17"
private_subnet_name="devtest_private_subnet"
public_subnet_name="devtest_public_subnet"
prohibit_public_ip_on_vnic_private_subnet = true
prohibit_public_ip_on_vnic_public_subnet = false
#oracle linux 7.9
source_image_id = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaacwqra6qcg5iil3pwqdmtorw37prkvxaw4xql6fxt6gx4lp2diyoa"
volume_name="additional_50gb_volume_public_instance"
volume_attachment_attachment_type="paravirtualized"
volume_size_gb=50
