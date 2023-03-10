
resource "oci_core_instance" "instance_lbr" {
  availability_domain = var.avadom_name
  compartment_id      = var.compartment_ocid

  shape               = var.shape
  shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }

  display_name        = "lbr"

  # Needed for bastion agent etc
  agent_config {
    are_all_plugins_disabled = false
    is_monitoring_disabled   = false

    plugins_config {
      desired_state = "ENABLED"
      name          = "Bastion"
    }
  }

  source_details {
    source_type = "image"
    source_id   = var.image_ocid
  }

   metadata = {
    ssh_authorized_keys = var.ssh_public_key
    user_data           = var.user_data_base64
  }

 create_vnic_details {
    subnet_id           = var.subnet_ocid
    hostname_label      = "lbr"
    assign_public_ip    = true
  }

  timeouts {
    create = "60m"
  }
}
