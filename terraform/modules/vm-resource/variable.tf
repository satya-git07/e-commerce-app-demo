
variable "instance_name" {
  description = "Name of the VM instance"
  type        = string
  default     = "naruto12"
}

variable "machine_type" {
  description = "Machine type for the VM"
  type        = string
  default     = "e2-micro"
}

variable "image" {
  description = "OS image for the boot disk"
  type        = string
  default     = "centos-cloud/centos-stream-9"
}

variable "network" {
  description = "VPC network to attach to"
  type        = string
  default     = "default"
}

variable "zone" {
  description = "GCP zone to launch the VM"
  type        = string
  default     = "us-central1-a"
}
