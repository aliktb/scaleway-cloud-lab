resource "digitalocean_vpc" "k8s" {
  name   = "k8s-vpc"
  region = "lon1"

  timeouts {
    delete = "4m"
  }
}
