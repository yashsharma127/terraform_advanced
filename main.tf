#dev
module "dev-app" {
  source = "./my_app_infra_module"
  my_env = "dev"
  instance_type = "t2.micro"
  ami = var.my_ami
}

#prod
module "prd-app" {
  source = "./my_app_infra_module"
  my_env = "prod"
  instance_type = "t2.micro"
  ami = var.my_ami
}

#stg
module "stg-app" {
  source = "./my_app_infra_module"
  my_env = "stg"
  instance_type = "t2.micro"
  ami = var.my_ami
}

