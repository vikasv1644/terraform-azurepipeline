variable "resourceGroup" {
  type        = string
  description = "Storage account name"
}

variable "location" {
  type        = string
  description = "Default Resources location"
  default     = "eastus"
}

variable "address" {
  type        = list(string)
  description = "Default Address"
  default     = ["10.0.0.0/16"]
}

variable "networkname" {
  type        = string
  description = "Virtual network name"
}

variable "subnet" {
  type        = string
  description = "Subnet name"
}

variable "addressprefix" {
  type        = list(string)
  description = "Default Address"
  default     = ["10.0.1.0/24"]
}

variable "vmName" {
  type        = string
  description = "Virtual machine name"
}

variable "vmSize" {
  type        = string
  description = "Virtual machine size"
}

variable "failover_location" {
  type        = string
  description = "Failover location for cosmos DB"
  default     = "westus"
}

variable "cosmosDB" {
  type        = string
  description = "Cosmos DB name"
}

variable "dbKind" {
  type        = string
  description = "Cosmos DB kind"
}
