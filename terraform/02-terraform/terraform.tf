resource "aws_instance" "terraform" {

    #ami = var.ami_id
    ami = data.aws_ami.DevOps.id
    #instance_type = var.instance_type
    instance_type = var.environment == "prod" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = var.tags
}

resource "aws_security_group" "allow_ssh_terraform" {
    name= var.sg_name
    description= var.sg_description

    egress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = "-1"
        cidr_blocks = var.egress_cidr
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = var.protocol
        cidr_blocks = var.ingress_cidr
        ipv6_cidr_blocks = ["::/0"]
    }
    tags = var.tags
}