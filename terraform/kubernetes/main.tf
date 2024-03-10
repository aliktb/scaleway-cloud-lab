terraform {
  required_providers {

    ## Scaleway Provider
    scaleway = {
      source = "scaleway/scaleway"
    }
  }

  required_version = ">= 0.13"
}

provider "scaleway" {
  alias   = "p2"
  profile = "myProfile"
}


resource "scaleway_vpc_private_network" "hedy" {
  provider = scaleway.p2
}

resource "scaleway_k8s_cluster" "jack" {
  provider = scaleway.p2

  name    = "jack"
  version = "1.29.1"
  cni     = "cilium"
  private_network_id = scaleway_vpc_private_network.hedy.id
  delete_additional_resources = false
}

resource "scaleway_k8s_pool" "john" {
  provider = scaleway.p2

  cluster_id = scaleway_k8s_cluster.jack.id
  name       = "john"
  node_type  = "DEV1-M"
  size       = 1
}


output "kubeconfig" {
  description = "Name of my cluster"
  value       = scaleway_k8s_cluster.jack.kubeconfig[0]

  sensitive = true
}
