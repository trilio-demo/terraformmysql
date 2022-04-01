resource "kubectl_manifest" "create_secret" {
  yaml_body = file("/Users/stefankroll/stuff/k8s-yaml/Demo_mysql/1_target/1_target_secret-stefan.yaml")
  override_namespace = var.namespace_name
}


resource "kubectl_manifest" "create_target" {
  yaml_body = file("/Users/stefankroll/stuff/k8s-yaml/Demo_mysql/1_target/1_target_stefan.yaml")
  override_namespace = var.namespace_name
}

