locals {
    instance_type = "t3.micro" 
    tags = merge(var.comman_tags, var.ec2_tags) # functions can be used in locals
    image_id = "ami-0220d79f3f480ecf5" # once used it in resources that cannot be overridden by variables. 
    #It is like hardcoding but we can use it in multiple places and if we want to change it we can change it in one place.
}