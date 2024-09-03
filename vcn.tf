
resource "oci_core_vcn" "test_vcn" {
    compartment_id = var.compartment_id
    cidr_blocks = var.vcn_cidr_blocks
    defined_tags = var.defined_tags
    display_name = "${var.vcn_name}"
    dns_label = var.dns_label
    freeform_tags = var.freeform_tags
}
