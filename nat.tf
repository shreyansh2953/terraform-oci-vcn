resource "oci_core_public_ip" "test_public_ip" {
    count         = var.isNAT ? 1 : 0
    compartment_id = var.compartment_id
    lifetime = "RESERVED"

    defined_tags = var.defined_tags
    display_name = "my-reserved-public-ip"
    freeform_tags = var.freeform_tags
   
}

resource "oci_core_nat_gateway" "test_nat_gateway" {
    count         = var.isNAT ? 1 : 0
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.test_vcn.id

    defined_tags = var.defined_tags
    display_name = "my-nat"
    freeform_tags = var.freeform_tags
    public_ip_id = oci_core_public_ip.test_public_ip[0].id
    
}