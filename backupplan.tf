resource "kubectl_manifest" "createbackupplan" {
    yaml_body = <<YAML
apiVersion: triliovault.trilio.io/v1
kind: BackupPlan
metadata:
  name: backupplan-tf-test-stefan
  namespace: tf-test-stefan
spec:
  backupNamespace: tf-test-stefan
  backupConfig:
    target:
      name: stefan-trilio-s3-bucket
      namespace: tf-test-stefan
  backupPlanComponents:
    custom:
      - matchLabels:
          app: k8s-demo-app
YAML
}
