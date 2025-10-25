output "public_ip" {
  value = aws_instance.terraform.public_ip
  sensitive = false
  description = "This is public ip of instance"
}


output "ami_id" {
    value = data.aws_ami.DevOps.id
}