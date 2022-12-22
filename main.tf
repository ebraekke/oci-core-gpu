
module "worker" {
    source              = "./modules/worker"

    instance_count      = var.worker_count
    compartment_ocid    = var.compartment_ocid
    ssh_public_key      = var.ssh_public_key
    user_data_base64    = local.user_data_base64_standard
    shape               = var.worker_shape
    avadom_name         = local.avadom_name
    faldom_list         = local.faldom_list 
    faldom_count        = local.faldom_count 
    subnet_ocid         = var.subnet_ocid
    image_ocid          = var.worker_image_ocid
}
