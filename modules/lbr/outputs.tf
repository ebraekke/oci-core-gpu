
###########################################################################
# OUTPUT ips
###########################################################################

output "lbr_public_ips" {
  value = oci_core_instance.instance_lbr.*.public_ip
}


output "lbr_private_ips" {
  value = oci_core_instance.instance_lbr.*.private_ip
}

output "lbr_ocid_list" {
  value = oci_core_instance.instance_lbr.*.id
}
