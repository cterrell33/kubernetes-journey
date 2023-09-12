variable cluster_name {
  type        = string
  default     = "cmoloot-eks-cluster"
  description = "name of cluser"
}

variable subnet1 {
  type        = string
  default     = "subnet-0fde09e9c03cd4fed"
  description = "subnet1 id"
}

variable subnet2 {
  type        = string
  default     = "subnet-08d431f0e3584705c"
  description = "subnet2 id"
}
