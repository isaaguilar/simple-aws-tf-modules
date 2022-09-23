terraform {

  required_providers {
    local  = "~> 2.2"
    random = "~> 2.2"
  }
}

resource "random_integer" "id" {
  min = 1
  max = 50000
  keepers = {
    example = var.example
  }
}

locals {
  example = format("%v %v", var.example, join("", random_integer.id[*].result))
}
