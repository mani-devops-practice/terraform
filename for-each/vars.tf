

# Map
/* variable ec2_instances {
     type = map 
     default = {

        "mongodb" = "t3.micro"
        # "redis" = "t3.micro"
         "mysql" = "t3.small"
         # "catalogue" = "t3.small"

     }
 } */


# Convert this to set while calling the module
variable "list_example" {
    type = list
    default = ["mongodb", "redis"]
  
}


variable "route_53_zone_id" {
    type = string
    default = "Z0284894TI6GCPU6GNRN"
  
}

variable "domain_name" {
    type = string
    default = "manig.online"
  
}
