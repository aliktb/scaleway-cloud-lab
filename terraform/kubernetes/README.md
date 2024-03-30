# Terraform instructions

To perform terraform scripts, run:

```bash
tofu apply

tofu output kubeconfig | tr -d '"' | base64 -d > ~/.kube/vultr.yaml

export KUBECONFIG=~/.kube/vultr.yaml
```

To tear down cluster, run:

```bash
tofu destroy -var-file="dev.tfvars"
```
