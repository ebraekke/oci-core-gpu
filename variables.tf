
# subnet for CI

variable "subnet_ocid"      {}

###########################################################################
# Details related to account/identity (provider.tf)
###########################################################################
variable "region"           { default = "eu-stockholm-1"}
variable "tenancy_ocid"     {}
variable "compartment_ocid" {}
variable "user_ocid"        {}
variable "fingerprint"      {}
variable "private_key_path" {}
