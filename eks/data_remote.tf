data "terraform_remote_state" "network" { 
  backend = "local"
  config = {
    path = "../EKS_module/vpcseries/terraform.tfstate"
  }
}
