# FluxCD bootstrap with Terraform

Create a `env.tfvars` file:

```bash
cp env.tfvars.example env.tfvars
```

Populate the values and save the file. This will not be committed to git.

To apply:

```bash
tofu apply -var-file="env.tfvars"
```
