variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}   
  

variable "tags" {
    type = map(string)
    default = {
        Name = "terraform"
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }    
  
}

variable "sg_from_port" {
    type = number
    default = 0

  
}

variable "sg_to_port" {
    type = number
    default = 0
  
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
  
}

variable "sg_name" {
    type = string
    default = "allow-all-terraform" # this is for AWS account
  
}