
output "vcn_id" {
    value = oci_core_vcn.test_vcn.id
}

output "subnet_ids" {
  value = oci_core_subnet.test_subnet[*].id
}