
variable "compartment_ocid" {}
variable "ssh_public_key"   {}
variable "user_data_base64" {}
variable "shape"            {}
variable "ocpus"            { default = "1" }
variable "memory_in_gbs"    { default = "16" }
variable "avadom_name"      {}
variable "subnet_ocid"      {}
variable "image_ocid"       {}
