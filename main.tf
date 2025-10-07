terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"  # Usando o provedor correto
      version = "~> 3.0.2"            # A versão que você deseja
    }
  }
}

provider "docker" {}

# Recurso para o contêiner Nginx
resource "docker_container" "nginx_server" {
  name  = var.container_name
  image = "nginx:alpine"  # Usando a imagem oficial do Nginx diretamente
  ports {
    internal = 80
    external = var.external_port  # Porta externa configurada pela variável
  }
}

# Recurso para o contêiner Redis
resource "docker_container" "redis_server" {
  image = "redis:alpine"  # Usando a imagem oficial do Redis
  name  = var.redis_container_name
  ports {
    internal = 6379
    external = var.redis_external_port  # Porta externa configurada pela variável
  }
}
