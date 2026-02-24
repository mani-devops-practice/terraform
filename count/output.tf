output "roboshop_ec2_instances" {
    value = aws_instance.example
    description = "displaying the aws instance op"
}


output "list_op" {

    value = var.list_example
    description = "displaying the list variable op"
  
}


output "set_op" {
    
    value = var.set_example
    description = "displaying the set variable op"
  
}