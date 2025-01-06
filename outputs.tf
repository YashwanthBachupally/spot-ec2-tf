output "spot_instance_id" {
  description = "ID of the created spot instance"
  value       = aws_spot_instance_request.worker.spot_instance_id
}

output "public_ip" {
  description = "Public IP of the spot instance"
  value       = aws_spot_instance_request.worker.public_ip
}
