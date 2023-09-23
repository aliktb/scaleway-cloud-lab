resource "digitalocean_kubernetes_cluster" "myfirstcluster" {
  name   = "myfirstcluster"
  region = "lon1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.28.2-do.0"

  vpc_uuid = digitalocean_vpc.k8s.id

  node_pool {
    name       = "worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 3

    # taint {
    #   key    = "workloadKind"
    #   value  = "database"
    #   effect = "NoSchedule"
    # }
  }
}
