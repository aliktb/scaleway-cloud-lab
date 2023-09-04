# Create a new Web Droplet in the lon1 region
resource "digitalocean_droplet" "web" {

  image  = "ubuntu-22-04-x64"
  name   = "web-1"
  region = "lon1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.mbp-pro-personal.id
  ]

  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.pvt_key)
    timeout     = "2m"
  }

  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "export DEBIAN_FRONTEND=noninteractive",
      # install nginx
      "sudo apt update",
      "sudo apt install -y nginx"
    ]
  }
}
