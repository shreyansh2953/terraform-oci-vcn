resource "oci_core_subnet" "test_subnet" {
    count = length(var.subnet_cidrs)
    cidr_block = var.subnet_cidrs[count.index]
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.test_vcn.id

    availability_domain = var.isAdSpecific[count.index] ? random_shuffle.ad.result[0]:null
    defined_tags = var.defined_tags
    display_name = var.subnet_display_name[count.index]
    prohibit_public_ip_on_vnic = var.isSubnetPrivate[count.index]
    # dns_label = var.subnet_dns_label
    freeform_tags = var.freeform_tags
    # route_table_id = oci_core_route_table.test_route_table.id
    # security_list_ids = var.subnet_security_list_ids
}