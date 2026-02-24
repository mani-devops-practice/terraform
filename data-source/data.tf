data "aws_ami" "example" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  owners = ["973714476881"]
}


# This is for getting the details of existing EC2 instance using data source
data "aws_instance" "get_aws_info" {
    instance_id = "i-0b1c9e5f8e8a9b2c3"
    
}