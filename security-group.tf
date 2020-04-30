resource "aws_security_group" "acess-ssh" {
  name        = "acess-ssh"
  description = "acess-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["200.180.52.249/32"]
  }

  tags = {
    Name = "ssh"
  }
}