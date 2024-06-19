module "dev" {
  count = terraform.workspace == "dev" ? 1 : 0
  source = "./module/vm"

  ami = data.aws_ami.amz_ami.id
  instance_type = var.instance_type
  sg_name = ["${module.sg.sg_name}"]
  vm_tag = "JAKC-${terraform.workspace}"


}

