resource "null_resource" "mysqlapp" {
  provisioner "local-exec" {
    command = "kubectl create -f  /Users/stefankroll/stuff/k8s-yaml/Demo_mysql/2_mysql-app/2_mysql-k8s-demo-app.yaml -n ${var.namespace_name}"
  }
}
