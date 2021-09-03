variable compartment_id {
  type=string
  description= "Define the compartment id in which you want to create the Virtual Cloud Network"

}
variable region {
  type=string
  description = "Define the region in which you want to create the Virtual Cloud Network"
}
variable cidr {
  type=list
  description = "Input the subnet in CIDR format which you want to create on Virtual Cloud Network example type list(string): ['10.0.0.0/16']"
}
variable vcn_name {
  type=string
  description = "Define the name for the Virtual Cloud Network"
}
variable vcn_dns_label {
  type=string
  description = "Define the DNS Label for the Virtual Cloud Network"
}

variable create_internet_gateway {
  type=bool
  default=true
  description = "Define if you want to create the internet gateway for the Virtual Cloud Network boolean: true or false"
}
variable create_nat_gateway {
  type=bool
  default=true
  description = "Define if you want to create the nat gateway for the Virtual Cloud Network type boolean: true or false"
}
variable create_service_gateway {
  type=bool
  default=true
  description = "Define if you want to create the sservice gateway for the Virtual Cloud Network type boolean: true/false"
}
variable internet_gateway_display_name {
  type =string
  description = "Define the name of internet gateway for the Virtual Cloud Network type: string"
}
variable nat_gateway_display_name {
  type =string
  description = "Define the name of nat gateway for the Virtual Cloud Network type: string"

}
variable private_security_list_name {
  type = string
  description = "Define the name for private security list name type: string"

}
variable public_security_list_name {
  type = string
  description = "Define the name for public security list name type: string"
}

variable public_subnet_cidr {
  type = string
  description = "Define the cidr for public subnet type: string"
}

variable private_subnet_cidr {
  type = string
  description = "Define the cidr for private subnet type: string"
}

variable public_subnet_name {
  type = string
  description = "Define the name for public subnet type: string"
}
variable private_subnet_name {
  type = string
  description = "Define the name for private subnet type: string"
}
variable prohibit_public_ip_on_vnic_private_subnet {
  type=bool
  description = "Define if you want to allow or not public ip on private subnet type boolean: true/false"
}
variable prohibit_public_ip_on_vnic_public_subnet {
  type=bool
  description = "Define if you want to allow or not public ip on private subnet type boolean: true/false"
}

variable source_image_id {
   type=string
   default="ocid1.image.oc1.eu-frankfurt-1.aaaaaaaacwqra6qcg5iil3pwqdmtorw37prkvxaw4xql6fxt6gx4lp2diyoa"
   description= "Define the ocid of the image you want to use to deploy default is Oracle Linux 7.9"
}
variable volume_name {
   type=string
   description= "Define volume name for additional space on public instance"
}
variable volume_attachment_attachment_type {
  type=string
  description="Define the type of attachment to the public instance example: paravirtualized or iscsi. Default paravirtualized"
  default="paravirtualized"
}
variable volume_size_gb {
   type=number
   description="Define the size of volume which you want to attach to public instance"

}
