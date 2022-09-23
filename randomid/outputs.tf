
output "example" {
  description = "Example output"
  value       =  local.example 
}

output "id" {
  description = "Stable random number for this example"
  value       = join("", random_integer.id[*].result) 
}
