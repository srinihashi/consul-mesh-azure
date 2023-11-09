output "kubernetes_cluster_id" {
  value = module.aks.aks_id
}

output "resource_group_name" {
  value = var.resource_group_name
}

output "aks_cluster_name" {
  value = module.aks.aks_name
}
