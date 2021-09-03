resource "oci_identity_compartment" "tf-compartment" {
    compartment_id = var.compartment_id

    description = "Compartment for DevOps Test."
    name = "devops-test"
}
