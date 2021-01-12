

resource "digitalocean_droplet" "centosbox" {
  image  = "centos-7-x64"
  name   = "centosbox"
  region = "LON1"
  size   = "s-1vcpu-3gb"
  private_networking = "true"
  ssh_keys = ["${var.ssh_fingerprint}"]
}
  # provisioner "file" {
  #   source      = "${file(var.git_private_key)}"
  #   destination = "/home/centos/.ssh/"
  # }
  # provisioner "file" {
  #   source      = "${file(var.git_public_key)}"
  #   destination = "/home/centos/.ssh/"
  # }
  #   connection {
  #     user = "centos"
  #     type = "ssh"
  #     private_key = "${file(var.git_private_key)}"
  #     timeout = "2m"
  #     host = "${digitalocean_droplet.centosbox.ipv4_address}"
  #   }

output "ip" {
  value = "${digitalocean_droplet.centosbox.ipv4_address}"
}
