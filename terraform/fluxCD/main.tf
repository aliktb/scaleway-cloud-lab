terraform {
  required_providers {

    ## FluxCD Provider
    flux = {
      source = "fluxcd/flux"
    }

    ## GitHub Provider
    github = {
      source  = "integrations/github"
      version = ">=5.18.0"
    }

  }

  required_version = ">= 0.13"
}

provider "github" {
  owner = var.github_org
  token = var.github_token
}

provider "flux" {
  kubernetes = {
    config_path = "~/.kube/scw.yaml"
  }
  git = {
    url = "ssh://git@github.com/${var.github_org}/${var.github_repository}.git"
    ssh = {
      username    = "git"
      private_key = tls_private_key.flux.private_key_pem
    }
  }
}

resource "flux_bootstrap_git" "this" {
  depends_on = [github_repository_deploy_key.this]

  path = "clusters/my-cluster"
}

resource "tls_private_key" "flux" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P256"
}

resource "github_repository_deploy_key" "this" {
  title      = "Flux"
  repository = var.github_repository
  key        = tls_private_key.flux.public_key_openssh
  read_only  = "false"
}
