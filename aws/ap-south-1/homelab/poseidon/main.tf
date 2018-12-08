module "digitalocean-homelab" {
  source = "git::https://github.com/poseidon/typhoon//digital-ocean/container-linux/kubernetes?ref=v1.11.3"

  providers = {
    digitalocean = "digitalocean.default"
    local        = "local.default"
    null         = "null.default"
    template     = "template.default"
    tls          = "tls.default"
  }

  # Digital Ocean
  cluster_name = "homelab"
  region       = "blr1"
  dns_zone     = "k8s.homelab.tasdikrahman.me"

  # configuration
  ssh_fingerprints = ["55:38:74:ac:23:e3:2e:cd:f7:6f:59:dd:d0:ac:37:97"]
  asset_dir        = "/home/tasdik/.secrets/clusters/digitalocean/homelab"

  # optional
  worker_count = 1
  worker_type  = "s-1vcpu-1gb"
}
