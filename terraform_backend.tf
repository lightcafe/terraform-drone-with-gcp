terraform {
  backend "gcs" {
    path        = "terraform.tfstate"
  }
}
