# Terraform usage for creating app + backupplan


1. Definition of the authentification happens in the main.tf manifest file
2. Definition of the variable to be used for all files are defined in variables.tf
3. all tf file are being analyzed and executed during "terraform init/plan/apply"



You can exectue native kubernetes actions via **the kubernetes provider** or execute commands via **the kubectl provider** - both defined in the main.tf manifest




### main.tf
Please replace the value of "config_path" with the location of your kubeconfig file e.g.

```
provider "kubernetes" {
  config_path    = "~/Downloads/staging_new.yaml"
}

provider "kubectl" {
  config_path = "~/Downloads/staging_new.yaml"
}

```



In this example we got one variable **namespace_name** which defines the namespace to be used for all actions


### variables.tf
```
variable "namespace_name" {
	description = "Namespace for terrafrom execution"
	type 	= string
	default = "tf-test-stefan"
}
```

