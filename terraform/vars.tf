variable "environment" { default = "dev" }              # should be coming from env folder for ex: tst.tfvars
variable "tags" {
    default = {
        "MainProject" = "TechSlate"
        "SubProject"  = "Containers"
    }
}

variable "ARM_SUBSCRIPTION_ID"  {}
variable "ARM_TENANT_ID"        {}
variable "ARM_CLIENT_ID"        {}
variable "ARM_CLIENT_SECRET"    {}

variable "specific_tags"        { default = {} }

variable "main_project"         { default = "jenkins" }   # Set this VARIABLE - this will form  the name of RESOURCES

variable "sub_project"          { default = "212" }
variable "location"             { default = "uksouth" }                             # https://github.com/claranet/terraform-azurerm-regions/blob/master/regions.tf
variable "container_image"      { default = "jenkins/jenkins" }
variable "container_port"       { default = "8080" }

variable "dns_name_label"       { default = "jenkins433" }  # Set this VARIABLE - this will be URL of application, should be unique
variable "env" {
  description = "Environment"
  type        = string
}
