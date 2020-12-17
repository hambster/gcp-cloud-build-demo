

terraform {
  backend "gcs" {
    bucket = "cloud-build-demo-tf-state-20201217"
    prefix = "BRANCH"
  }
}
