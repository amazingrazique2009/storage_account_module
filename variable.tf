
variable "storage_account_name" {
  type        = string
}

variable "resource_group_name" {

  type        = string
}

variable "location" {

  type        = string
}

variable "account_tier" {

  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  
  type        = string
  default     = "GRS"
}

variable "containers" {
  description = "A list of blob containers to create within the storage account."
  type = list(object({
    name        = string
    access_type = string
  }))
  default = []
}
