terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull nginx image once
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Create multiple containers dynamically
resource "docker_container" "nginx_container" {
  for_each = {
    for container in var.container_config :
    container.name => container
  }

  name  = each.value.name
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = each.value.port
  }
}
