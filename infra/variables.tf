variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "East US"
}
variable "rg_name" {
  description = "The name of the Resource Group"
  type        = string
  default     = "my-rg-02"
}
variable "vnet_cidr" {
  description = "The CIDR block for the Virtual Network"
  type        = string
  default     = "10.0.0.0/16"
}