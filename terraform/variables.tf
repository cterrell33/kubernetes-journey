variable "cluster_name" {
  type        = string
  default     = "cmoloot-eks-cluster"
  description = "name of cluser"
}

variable "subnet1" {
  type        = string
  default     = "subnet-05867702686ddbab0"
  description = "subnet1 id"
}

variable "subnet2" {
  type        = string
  default     = "subnet-001f7ac9ede283998"
  description = "subnet2 id"
}
