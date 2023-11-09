#data "azurerm_virtual_network" "vnet" {
#  resource_group_name = var.resource_group_name
#  name                = var.vnet_name
#}

module "aks" {
  source  = "Azure/aks/azurerm"
  version = "7.4.0"

  location = var.region
  resource_group_name = var.resource_group_name
  cluster_name        = var.aks_cluster_name
  kubernetes_version  = var.k8s_version
  prefix = var.prefix
  agents_count        = var.aks_node_count
  agents_size         = var.aks_node_size
  rbac_aad = false
  log_analytics_workspace_enabled = var.enable_logs
  #client_id   = var.service_principal
  #client_secret       = var.client_secret
  # network_plugin      = "azure"
  #network_policy      = "calico"
  #vnet_subnet_id      = module.vnet.vnet_subnets[0].id
  tags = {
    environment = var.env
    git_repo    = var.git_repo
  }
  agents_labels = {
    "nodegroup" = "consul-control-plane"
  }
}

/*
resource "azurerm_kubernetes_cluster_node_pool" "consul-data-plane" {
  kubernetes_cluster_id = module.aks.aks_id
  name                  = var.aks_node_pool_name
  vm_size               = var.aks_node_pool_size
  node_count            = var.aks_node_pool_count

  tags = {
    Environment = var.env
    git_repo    = var.git_repo
  }
  node_labels = {
    "nodegroup" = "consul-data-plane"
  }
}
*/