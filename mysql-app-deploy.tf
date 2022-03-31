resource "null_resource" "secret" {
  provisioner "local-exec" {
    command = "kubectl create -f  /Users/stefankroll/stuff/k8s-yaml/Demo_mysql/2_mysql-app/2_mysql-k8s-demo-app.yaml -n terraform-test-stefan"
  }
}
