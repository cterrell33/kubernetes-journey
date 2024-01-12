variable "cluster_name" {
  type        = string
  default     = "cmoloot-eks-cluster"
  description = "name of cluser"
}

variable "rules" {
    type = list(object({
        description     = string
        from_port       = number
        to_port         = number
        protocol        = string
        cidr_blocks     = list(string)
    }))
    default = [
        {
            description  = "allow ping"
            from_port    = -1
            to_port      = -1
            protocol     = "icmp"
            cidr_blocks  = ["0.0.0.0/0"]
        },
        {
            description  = "HTTP"
            from_port    = 31830
            to_port      = 31830
            protocol     = "tcp"
            cidr_blocks  = ["0.0.0.0/0"]
        },        
        {
            description  = "HTTP"
            from_port    = 80
            to_port      = 80
            protocol     = "tcp"
            cidr_blocks  = ["0.0.0.0/0"]
        },
        {
            description  = "ssh"
            from_port    = 22
            to_port      = 22
            protocol     = "tcp"
            cidr_blocks  = ["0.0.0.0/0"]
        }
    ]
}