resource "kubectl_manifest" "create_hook" {
  yaml_body = file("/Users/stefankroll/stuff/k8s-yaml/Demo_mysql/3_hooks/2c_hook-mysql.yaml")
  override_namespace = var.namespace_name
}
