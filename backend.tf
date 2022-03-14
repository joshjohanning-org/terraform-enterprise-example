terraform {
  backend "remote" {
    organization = "joshjohanning-org"
    workspaces {
      name = "terraform-enterprise-example" # name for your app's state.
    }
  }
}
