output "nginx_container_id" {
  description = "ID do contêiner Nginx."
  value       = docker_container.nginx_server.id
}

output "nginx_port" {
  description = "Porta externa do Nginx."
  value       = var.external_port
}

output "redis_container_id" {
  description = "ID do contêiner Redis."
  value       = docker_container.redis_server.id
}

output "redis_port" {
  description = "Porta externa do Redis."
  value       = var.redis_external_port
}
