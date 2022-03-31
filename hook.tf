resource "kubectl_manifest" "create_hook" {
  yaml_body = file("/Users/stefankroll/stuff/k8s-yaml/Demo_mysql/4_backupplan/backupplan-mysql.yaml")
  override_namespace = "terraform-test-stefan"
}
