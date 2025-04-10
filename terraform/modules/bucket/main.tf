resource "google_storage_bucket" "tf_state_bucket" {
  name          = var.bucket_name  
  location      = var.bucket_location  
  storage_class = var.bucket_storage_class 
  uniform_bucket_level_access = var.uniform_bucket_level_access  
}

# Backend Configuration for Terraform State
terraform {
  backend "gcs" {
    bucket = var.backend_bucket_name  
    prefix = var.backend_prefix  
  }
}
