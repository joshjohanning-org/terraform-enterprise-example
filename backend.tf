terraform {
  backend "remote" {
    organization = "joshjohanning-org"
    workspaces {
      name = "my-app" # name for your app's state.
    }
  }
}
