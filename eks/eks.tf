# create EKS cluster
resource "aws_eks_cluster" "demo" {
  name = var.ekscluster_name
  role_arn = data.terraform_remote_state.network.outputs.demo_role
  vpc_config {
    subnet_ids = [ 
       data.terraform_remote_state.network.outputs.public[0], data.terraform_remote_state.network.outputs.public[1],
       data.terraform_remote_state.network.outputs.private[0], data.terraform_remote_state.network.outputs.private[1]
     ]
  }
  depends_on = [ data.terraform_remote_state.network ]
}

