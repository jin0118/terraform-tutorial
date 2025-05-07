
terraform {
  # init 했을 때 .terraform.lock.hcl을 불러온다
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
  
}

# README.md 보니까 terraform 공식 문서 내에 provider에 대한 Resourece, Data에 대한 링크가 적혀있다
provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"

  ports {
    internal = 80
    external = 8000
  }
}
