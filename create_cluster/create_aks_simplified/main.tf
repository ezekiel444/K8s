resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.resource_group_name
}


resource "azurerm_kubernetes_cluster" "k8s" {
  location            = azurerm_resource_group.rg.location
  name                = var.cluster_name
  resource_group_name =azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix
  tags                = {
    Environment = "Test"
  }
  
  default_node_pool {
    name       = "agentpool"
    vm_size    = var.size_vm_agentpool
    node_count = var.agent_count
  }

  identity {
    type = "SystemAssigned"
  }
   /* provisioner "local-exec" {
    command = "kubectl apply -f ./argocd/main.yml"
  } */
}