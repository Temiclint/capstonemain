terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}

data "aws_eks_cluster" "student-dev-eks-capstone1" {
  name = "student-dev-eks-capstone1"
}
data "aws_eks_cluster_auth" "student-dev-eks-capstone1_auth" {
  name = "student-dev-eks-capstone1_auth"
}
provider "kubernetes" {
  host                   = data.aws_eks_cluster.student-dev-eks-capstone1.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.student-dev-eks-capstone1.certificate_authority[0].data)
  version          = "2.16.1"
  config_path = "~/.kube/config"
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", "student-dev-eks-capstone1"]
    command     = "aws"
  }
}

resource "kubernetes_namespace" "kube-namespace" {
  metadata {
    name = "sock-shop"
  }
}