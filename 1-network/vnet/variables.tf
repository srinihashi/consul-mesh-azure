variable "region" {
  type        = string
  description = "value of the region"
  default     = "Central US"
}

variable "resource_group_name" {
  type        = string
  description = "value of the resource group name"
  default     = "aks"
}

variable "vnet_name" {
  type        = string
  description = "value of the vnet name"
  default     = "aks-vnet"
}

variable "vnet_cidr" {
  type        = list(string)
  description = "value of the vNet cidr block"
  default     = ["10.0.0.0/16"]
}

variable "env" {
  type = string
  description = "value of the environment"
  default = "dev"
}

variable "git_repo" {
  type = string
  description = "Link to the git repo"
  default = ""
}