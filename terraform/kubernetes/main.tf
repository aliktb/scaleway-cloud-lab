terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.19.0"
    }
  }
}

# Configure the Vultr Provider
provider "vultr" {
  api_key = var.vultr_api_token
  rate_limit = 100
  retry_limit = 3
}



resource "vultr_kubernetes" "k8" {
    region  = "ewr"
    label   = "vke-test"
    version = "v1.29.2+1"

    node_pools {
        node_quantity = 1
        plan          = "vc2-1c-2gb"
        label         = "vke-nodepool"
        auto_scaler   = false
    }
}


output "kubeconfig" {
  description = "Name of my cluster"
  value       = vultr_kubernetes.k8.kube_config
  sensitive = true
}
