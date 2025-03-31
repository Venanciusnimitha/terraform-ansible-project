t = "your-key-name"
}
# terraform/outputs.tf
output "app_server_ip" {
  value = aws_instance.app_server.public_ip
}

output "support_server_ip" {
  value = aws_instance.support_server.public_ip
}

output "grafana_url" {
  value = "http://${aws_instance.support_server.public_ip}:3000"
}

output "prometheus_url" {
  value = "http://${aws_instance.support_server.public_ip}:9090"
}

output "app_metrics" {
  value = "http://${aws_instance.app_server.public_ip}:9100/metrics"
}