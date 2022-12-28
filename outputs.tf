
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

output "lbr_public_ips" {
  value = module.lbr.lbr_public_ips
}

output "lbr_private_ips" {
  value = module.lbr.lbr_private_ips
}

output "lbr_ocid_list" {
  value = module.lbr.lbr_ocid_list
}
