# Spot Instance Request
resource "aws_spot_instance_request" "worker" {
  ami                    = var.ami_id
  instance_type         = var.instance_type
  spot_price            = var.spot_price
  spot_type             = "one-time"
  wait_for_fulfillment  = true
  subnet_id             = aws_subnet.main.id
  security_group_ids    = [aws_security_group.allow_ssh.id]

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  tags = {
    Name = "spot-worker"
  }
}
