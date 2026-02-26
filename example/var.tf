variable "ec2_inst_names" {
    type = map(string)

    default = {
        "mongodb" = "t3.micro"
    }
  
}

variable "comman_tags" {
    type = map(string)
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
  
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Environment = "dev"
    }
  
}

# This is not allowed , we cannot use one variable inside another variable.
# We can use it in locals or directly in resource.

# variable "Environment" {
#     type = string
#     default = var.ec2_tags["Environment"]
  
# }