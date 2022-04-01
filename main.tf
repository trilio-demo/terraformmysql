provider "kubernetes" {
  config_path    = "~/Downloads/staging_new.yaml"
}

provider "kubectl" {
  config_path = "~/Downloads/staging_new.yaml"
}
