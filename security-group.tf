resource "aws_security_group" "acess-ssh" {
  name        = "acess-ssh-tcp8080"
  description = "acess-ssh-tcp8080"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["200.180.52.249/32"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["200.180.52.249/32"]
  }

  tags = {
    Name = "ssh"
  }
}