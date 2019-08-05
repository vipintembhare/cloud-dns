terraform {
  backend "gcs" {
    bucket = "conference-console-cloud-tfstate"
    credentials = "./creds/serviceaccount.json"
  }
}
