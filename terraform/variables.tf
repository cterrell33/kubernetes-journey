variable cluster_name {
  type        = string
  default     = "cmoloot-eks-cluster"
  description = "name of cluser"
}

variable subnet1 {
  type        = string
  default     = "subnet-08a0faf401289a8cc"
  description = "subnet1 id"
}

variable subnet2 {
  type        = string
  default     = "subnet-04f51ecd9c956a8bd"
  description = "subnet2 id"
}
