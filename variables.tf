
# variables for workers
variable "worker_image_ocid"    {}
variable "worker_subnet_ocid"   {}
variable "worker_count"         { default = 1 }
variable "worker_shape"         { default = "VM.GPU2.1" }

###########################################################################
# Details related to account/identity (provider.tf)
###########################################################################
variable "region"               { default = "eu-frankfurt-1"}
variable "tenancy_ocid"         {}
variable "compartment_ocid"     {}
variable "user_ocid"            {}
variable "fingerprint"          {}
variable "private_key_path"     {}

# variables for all instances 
variable "ssh_public_key"       {}