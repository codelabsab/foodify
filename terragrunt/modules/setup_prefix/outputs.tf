output "setup_prefix" {
  value = "${var.environment}-${random_pet.pet.id}"
}
