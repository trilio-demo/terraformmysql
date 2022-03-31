provider "kubernetes" {
  config_path    = "~/Downloads/staging_new.yaml"
}

provider "kubectl" {
  config_path = "~/Downloads/staging_new.yaml"
}

resource "kubernetes_namespace" "terraform-test-stefan" {
  metadata {
    name = "terraform-test-stefan"
  }
}
