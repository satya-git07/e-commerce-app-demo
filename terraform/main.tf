provider "google" {
  region  = var.project_id
  zone    = var.region
}

#creating the vm-instances
module "gcp_instance" {
  source        = "./modules/vm-resources"
  instance_name = "naruto12"
  machine_type  = "e2-micro"
  image         = "centos-cloud/centos-stream-9"
  network       = "default"
  zone          = "us-central1-a"
}


#creating the cluster
module "gke_cluster" {
  source = "./modules/gcp-k8s"

  cluster_name          = "my-gke-cluster"
  region                = "us-central1"
  node_count            = 3
  node_machine_type     = "e2-medium"
  node_disk_size        = 100
  create_node_pool      = true  # This will create the custom node pool
  node_pool_name        = "custom-node-pool"
  node_pool_count       = 3
  node_pool_machine_type = "e2-small"
}
