resource "oci_core_internet_gateway" "test_internet_gateway" {
    count         = var.isIGW ? 1 : 0
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.test_vcn.id

    defined_tags = var.defined_tags
    display_name = var.internet_gateway_display_name
    freeform_tags = var.freeform_tags
    
}