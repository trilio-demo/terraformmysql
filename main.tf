provider "kubernetes" {
  config_path    = "~/stuff/KUBECONFIGs/mke-staging.yaml"
}

provider "kubectl" {
  config_path = "~/stuff/KUBECONFIGs/mke-staging.yaml"
}
