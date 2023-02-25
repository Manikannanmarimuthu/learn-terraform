variable "components" {
  default = {
    cart={
      name="cart"
      instance_type="t3.small"
    }
    catalogue={
      name="catalogue"
      instance_type="t3.micro"
    }
  }
}

module "ec2" {
  source = "./modules"
  for_each = var.components
  instance_type = each.value.instance_type
  name= each.value.name
}

#Always iterate modules, not resources
#Always map the data and use the for_each loop