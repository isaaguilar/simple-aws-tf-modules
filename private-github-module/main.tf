# Create first file from template with vars defined below.

output "static" {
  value = "static"
}

module "private" {
  source = "git@github.com:isaaguilar/terraform-do-something-awesome.git?ref=main"

}

terraform {
  required_version = "> 0.12"
}
