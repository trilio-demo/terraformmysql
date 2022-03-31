# Terraform usage for creating app + backupplan


Definition of the KUBECONFIG file in the main.tf will be used for the other .tf files as well

You can exectue native kubernetes actions via kubernetes provider or execute commands via kubectl provider - both defined in the main.tf


You can take advantage of urls by replacing the part of 
```

 yaml_body = file("/Users/stefankroll/stuff/k8s-yaml/Demo_mysql/1_target/1_target_stefan.yaml")
 
```
 with
 
```
 data "http" "manifestfile" {
  url = "https://mycoolnawsomemanifesturl.com/${var.manifestversion}/manifest.yaml"
}

resource "kubectl_manifest" "mymanifest" {
  yaml_body = data.manifestfile.body
}

```
