terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.6.0"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}


variable "do_token" {}
variable "pvt_key" {}

provider "digitalocean" {
  token = var.do_token
}

provider "kubernetes" {
  host  = digitalocean_kubernetes_cluster.myfirstcluster.endpoint
  token = digitalocean_kubernetes_cluster.myfirstcluster.kube_config[0].token
  cluster_ca_certificate = base64decode(
    digitalocean_kubernetes_cluster.myfirstcluster.kube_config[0].cluster_ca_certificate
  )
}

provider "kubectl" {
  host  = digitalocean_kubernetes_cluster.myfirstcluster.endpoint
  token = digitalocean_kubernetes_cluster.myfirstcluster.kube_config[0].token
  cluster_ca_certificate = base64decode(
    digitalocean_kubernetes_cluster.myfirstcluster.kube_config[0].cluster_ca_certificate
  )
  load_config_file = false
}

data "digitalocean_ssh_key" "mbp-pro-personal" {
  name = "mbp-pro-personal"
}
