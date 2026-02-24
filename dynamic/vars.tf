variable "ingress_rules" {
    type = list(object({
        from_port   = number
        to_port     = number
        description = string
    }))
    default = [
        {
            from_port = 22
            to_port = 22
            description = "Allow SSH"
        },
        {
            from_port = 80
            to_port = 80
            description = "Allow HTTP"
        },
        {
            from_port = 443
            to_port = 443
            description = "Allow HTTPS"
        }
    ]

  
}

