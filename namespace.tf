resource "kubernetes_namespace" "namespace_name" {
  metadata {
    name = var.namespace_name
  }
}
