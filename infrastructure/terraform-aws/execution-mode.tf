# Terraform cloud settings.

terraform {
  backend "remote" {
    organization = "pet-projects"

    workspaces {
      name = "pet-java-api"
    }
  }
}
