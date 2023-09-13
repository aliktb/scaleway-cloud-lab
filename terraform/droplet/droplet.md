# How to provision a droplet

```bash
terraform plan \
  -var "do_token=${DO_PAT}" \
  -var "pvt_key=$HOME/.ssh/id_ed25519"
```


OR

```bash
terraform plan -var-file="dev.tfvars"
```

where `dev.tfvars` is a file with the properties:

```ini
do_token="MY_SECRET_TOKEN"
pvt_key="PATH_TO_PRIVATE_SSH_KEY"
```
