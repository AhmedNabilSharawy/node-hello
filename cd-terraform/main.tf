terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nawy_app" {
  name         = "ahmednabilsharawy/nawy-app:${var.image_tag}"
  keep_locally = true
}

resource "docker_container" "nawy_app" {
  name  = "nawy-app"
  image = docker_image.nawy_app.name
  ports {
    internal = 3000
    external = 3000
  }
}