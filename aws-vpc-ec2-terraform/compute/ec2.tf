resource "aws_instance" "server" {
  ami                         = "ami-0c02fb55956c7d316"
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Name = "${var.project_name}-ec2"
  }
}
