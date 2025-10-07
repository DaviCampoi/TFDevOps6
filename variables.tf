variable "container_name" {
  description = "O nome do contêiner Docker para o Nginx."
  type        = string
  default     = "nginx_server"
}

variable "external_port" {
  description = "A porta externa para acessar o servidor Nginx."
  type        = number
  default     = 8080  # Porta padrão para o Nginx
}

# Variáveis para o Redis
variable "redis_container_name" {
  description = "O nome do contêiner Docker para o Redis."
  type        = string
  default     = "redis_server"
}

variable "redis_external_port" {
  description = "A porta externa para acessar o Redis."
  type        = number
  default     = 6379  # Porta padrão do Redis
}
