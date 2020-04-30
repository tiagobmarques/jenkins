provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_instance" "dev" {
  count = 1
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name = "aws-jenkins"
  tags = {
    Name = "dev${count.index}"
  }

  vpc_security_group_ids = ["${aws_security_group.acess-ssh.id}"]
}
