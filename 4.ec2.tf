# EC2 App Server (FINAL FIXED)
resource "aws_instance" "app" {
  ami                    = "ami-05d2d839d4f73aafb"
  instance_type          = "m7i-flex.large"
  subnet_id              = aws_subnet.app_subnet.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  key_name               = "ec2-key"

    root_block_device {
    volume_size = 30
    volume_type = "gp3"
    encrypted   = true
  }

  tags = {
    Name = var.ec2_name
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("ec2-key.pem")
    host        = self.public_ip
  }

}
