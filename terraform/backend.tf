terraform {
  backend "gcs" {
    bucket  = "naru-hinata"
    prefix  = "terraform/state/gke-cluster"
  }
}
