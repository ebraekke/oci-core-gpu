
###########################################################################
# OUTPUT ips
###########################################################################

output "worker_private_ips" {
  value = oci_core_instance.instance_worker.*.private_ip
}

output "worker_ocid_list" {
  value = oci_core_instance.instance_worker.*.id
}
