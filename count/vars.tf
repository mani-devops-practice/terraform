variable "instances_names" {
    type = list(string)
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "route_53_zone_id" {
    type = string
    default = "Z0284894TI6GCPU6GNRN"
  
}

variable "domain_name" {
    type = string
    default = "manig.online"
  
}

variable "list_example" {
    type = list(string)
    default = ["item1", "item2", "item2", "item3"]
  
}

variable "set_example" {
    type = set(string)
    default = ["item1", "item2", "item2", "item3"]
  
}