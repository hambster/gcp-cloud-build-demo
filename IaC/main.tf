provider "google" {
  project = "${var.project}"
}

module "vpc" {
  source  = "vpc"
  project = "${var.project}"
  env     = "${var.env}"
}

module "firewall" {
  source  = "firewall"
  project = "${var.project}"
  subnet  = "${module.vpc.subnet}"
}
