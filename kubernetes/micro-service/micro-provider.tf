terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}

data "aws_eks_cluster" "student-dev-eks-demo" {
  name = "student-dev-eks-demo"
}
data "aws_eks_cluster_auth" "student-dev-eks-demo_auth" {
  name = "student-dev-eks-demo_auth"
}
provider "kubernetes" {
  host                   = data.aws_eks_cluster.student-dev-eks-demo.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.student-dev-eks-demo.certificate_authority[0].data)
  version          = "2.16.1"
  config_path = "~/.kube/config"
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", "student-dev-eks-demo"]
    command     = "aws"
  }
}

resource "kubernetes_namespace" "kube-namespace" {
  metadata {
    name = "sock-shop"
  }
}