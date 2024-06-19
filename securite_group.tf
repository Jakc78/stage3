module "sg" {
  source = "./module/sg"

  sg_ingress = local.sg_ingress
  sg_tag = "JAKC"
  sg_name = "sg${terraform.workspace}"



}

