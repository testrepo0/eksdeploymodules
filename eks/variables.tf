/*variable "vpc_subnet" {
    type = list(string)
    default = [ "subprivate1","subprivate2","subpublic1","subpublic2" ]
  
} */

variable "region" {
    type = string
    default = "us-east-1"
  
}

variable "node_private_name" {
    type = string

  
}

variable "node_public_name" {
    type = string

  
}
variable "ekscluster_name" {
    type = string
      

}

/*variable "data_state_name" {
    type = string
    default = "network"
} */