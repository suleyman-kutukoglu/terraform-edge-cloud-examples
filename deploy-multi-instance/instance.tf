resource "aws_instance" "ec2_instance" {
  ami = var.ami_image

  tags = {
    Name = "instance${count.index}"
  }

  instance_type = var.instance_type
  count         = var.instance_number
}

