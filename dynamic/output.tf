output "get_ami_id" {
    value = data.aws_ami.example.id
  
}


output "aws_info" {
    value = data.aws_instance.get_aws_info
  
}