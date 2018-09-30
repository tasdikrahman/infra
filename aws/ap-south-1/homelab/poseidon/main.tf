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
  ssh_fingerprints = ["4d:6b:79:41:e0:19:92:c4:a4:df:51:36:27:c5:0f:ed"]
  asset_dir        = "/Users/tasdikrahman/.secrets/clusters/digitalocean/homelab"

  # optional
  worker_count = 1
  worker_type  = "s-1vcpu-1gb"
}
