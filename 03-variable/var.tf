variable "sample" {
  default = 100
}

variable "sample1" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

output "sample-ext" {
  value = "value of sample - ${var.sample}"
}

#plain

variable "devops" {
  default = "training"
}

#list
variable "devops1" {
  default = [
    "devops",
    "aws",
    "python"
  ]
}
#map

variable "devopsaws" {
  default = {
    devops = {
      name = "devops",
      time = "2am"
      dur = "daily"
    }
    aws = {
      name = "aws",
      time = "3am",
      dur = "daily"
    }
  }
}

output "devops" {
  value = var.devops
}


output "devops1" {
  value = var.devops1
}


output "devopsaws" {
  value = var.devopsaws
}

variable "env" {}

output "env" {
  value = var.env
}