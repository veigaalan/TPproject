variable "EC2-image" {
  default = ""
  type = string
}

variable "prefix" {
  default = "tfvmex"
}

variable "instance_type" {
  default = ""
  type = string
}
variable "resource_group_location" {
  default = "westus"
  description   = "Location of the resource group."
}
variable "resource_type" {
  default = "Standard_DS1_v2"
  description = "type of machine used"
}

variable "resource_group_name" {
  default = "westus"
  description   = "Location of the resource group."
}

variable "EC2_key_name" {
  default = ""
  type = string
}

variable "subscription_id_one" {
  default = "4a5e3b71-7496-44a9-85dc-86f986bd8f27"
  type = string
}

variable "tenant_id_one" {
  default = "c160a942-c869-429f-8a96-f8c8296d57db"
  type = string
}

variable "cliente_id" {
  default = "4a5e3b71-7496-44a9-85dc-86f986bd8f27"
  type = string
}

variable "client_secret" {
  default = ""
  type = string
}
