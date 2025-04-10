provider "google" {
  region  = "us-central1"
  zone    = "us-central1-a"
}

module "gcp_instance" {
  source        = "./modules/vm-resources"
  instance_name = "naruto12"
  machine_type  = "e2-micro"
  image         = "centos-cloud/centos-stream-9"
  network       = "default"
  zone          = "us-central1-a"
}
