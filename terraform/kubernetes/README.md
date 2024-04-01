# Terraform instructions

Ensure that `~/.config/scw/config.yaml` exists with the necessary values. To perform terraform (OpenTofu) scripts, run:

```bash
tofu apply

tofu output -json kubeconfig | yq -P '.config_file' > ~/.kube/scw.yaml
```

To tear down cluster, run:

```bash
tofu destroy -var-file="dev.tfvars"
```
