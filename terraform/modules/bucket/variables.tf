variable "region" {
  description = "The Google Cloud region for resources."
  type        = string
  default     = "us-central1"  # Default region, can be changed in terraform.tfvars
}

variable "bucket_name" {
  description = "The unique name for the GCS bucket."
  type        = string
}

variable "bucket_location" {
  description = "The location where the GCS bucket will be created."
  type        = string
  default     = "US"  # Default to US location, can be overridden
}

variable "bucket_storage_class" {
  description = "The storage class of the GCS bucket."
  type        = string
  default     = "STANDARD"  # Default storage class
}

variable "uniform_bucket_level_access" {
  description = "Whether to enable uniform bucket-level access."
  type        = bool
  default     = true  # Enable by default
}

variable "backend_bucket_name" {
  description = "The name of the GCS bucket used for storing Terraform state."
  type        = string
}

variable "backend_prefix" {
  description = "The path within the backend bucket where the state file will be stored."
  type        = string
  default     = "terraform/state"  # Default path for state files
}
