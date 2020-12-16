provider "google" {
  project = "${var.project}"
}

module "vpc" {
  source  = "vpc"
  project = "${var.project}"
  env     = "${local.env}"
}
