resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0fb26284c13dcdece"]

  tags = {
    Name = "HelloWorld"
  }
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "centos"
      password = "DevOps321"
      host = self.public_ip
    }

    inline = [
    "sudo labauto ansible",
    "ansible-pull -i localhost, -U https://github.com/Sangamesh30/roboshop-ansible.git main.yml -e env=dev -e role_name=frontend"
    ]
  }
}

data "aws_ami" "example" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}