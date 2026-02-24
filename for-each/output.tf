
# This is output from cmd: terraform output -json <>
output "ec2_op" {

    value = aws_instance.example
    description = "aws ec2 instance creation op"
  
}