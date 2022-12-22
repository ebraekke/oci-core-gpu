
/* uncomment for debugging -- not needed otherwise
output "ads" {
  value = data.oci_identity_availability_domains.ads
}

output "vcn_name" {
  value = data.oci_core_vcn.this_vcn.dns_label
}
*/

output "worker_private_ips" {
  value = module.worker.worker_private_ips
}

output "worker_ocid_list" {
  value = module.worker.worker_ocid_list
}
