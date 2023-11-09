variable "region" {
  type        = string
  description = "value of the region / location"
  default     = "Central US"
  
}
variable "vnet_name" {
  type        = string
  description = "value of the vnet name"
  default     = "aks-vnet"
}

variable "resource_group_name" {
  type        = string
  description = "value of the resource group name"
  default     = "aks-consul"
}

variable "aks_cluster_name" {
  type        = string
  description = "value of the aks cluster name"
  default     = "aks"
}

variable "prefix" {
  type        = string
  description = "value of the prefix"
  default     = "aks"
}

variable "aks_node_count" {
  type        = number
  description = "value of the aks node count"
  default     = 2
}

variable "aks_node_size" {
  type        = string
  description = "value of the aks node size"
  default     = "Standard_B2s"
}

variable "k8s_version" {
  type        = string
  description = "value of the k8s version"
  default     = "1.18.14"
}

variable "enable_logs" {
  type        = bool
  description = "value of the enable logs"
  default     = false
}
variable "env" {
  type        = string
  description = "value of the environment"
  default     = "Consul Demo"
}

variable "git_repo" {
  type        = string
  description = "Link to the git repo"
  default     = "https://github.com/srinihashicorp/azure-terraform.git"
}

variable "aks_node_pool_name" {
  type        = string
  description = "value of the aks node pool name"
  default     = "workerpool" 
}

variable "aks_node_pool_count" {
  type        = number
  description = "value of the aks node pool count"
  default     = 2
}

variable "aks_node_pool_size" {
  type        = string
  description = "value of the aks node pool size"
  default     = "Standard_B2s"
}
