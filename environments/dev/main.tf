variable "region" { default = "us-east-1" }

terraform {
  backend "s3" { // configured manually
    bucket       = "rsschool-devops-course-tasks-reconrus"
    key          = "terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}

provider "aws" {
  region = var.region
}
