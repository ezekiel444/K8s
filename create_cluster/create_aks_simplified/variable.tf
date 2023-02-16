variable "agent_count" {
  default = 2
}

# The following two variable declarations are placeholder references.
# Set the values for these variable in terraform.tfvars

variable "aks_service_principal_app_id" {
   type = string
   default = ""
}

variable "aks_service_principal_client_secret" {
    default = ""
    type = string
}

variable "cluster_name" {
  default = "camatomicluster"
  type = string
}

variable "dns_prefix" {
  default = "camatomi-dns"
  type = string
}

variable "resource_group_location" {
  default     = "west europe"
  type = string
  description = "Location of the resource group."
}

variable "resource_group_name" {
    default = "camatomi"
    type = string
    description = "Name of the resource"
}
variable "size_vm_agentpool" {
    default = "Standard_B2s"
    type = string
    description = "size of agentpool cluster"
}