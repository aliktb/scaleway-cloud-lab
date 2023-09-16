resource "kubectl_manifest" "doks-dev-namespace" {
    yaml_body = file("../../kube/namespace-dev.yaml")
}

resource "kubectl_manifest" "nginx-deployment" {
    yaml_body = file("../../kube/nginx-deployment.yaml")
}

resource "kubectl_manifest" "nginx-service" {
    yaml_body = file("../../kube/nginx-service.yaml")
}
