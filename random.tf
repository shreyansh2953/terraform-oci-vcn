resource "random_shuffle" "ad" {
  input        = data.oci_identity_availability_domains.ads.availability_domains[*].name
  result_count = 1
}

