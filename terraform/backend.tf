terraform {
  cloud {
    organization = "komminarlab"

    workspaces {
      name = "github-actions"
    }
  }
}
