# Terraform instructions

To perform terraform scripts, run:

```bash
tofu apply

tofu output -json kubeconfig | yq -P '.config_file' > ~/.kube/scw.yaml
```

To tear down cluster, run:

```bash
tofu destroy -var-file="dev.tfvars"
```
