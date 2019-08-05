terraform {
  backend "gcs" {
    bucket = "conference-console-tfstate"
    credentials = "./creds/serviceaccount.json"
  }
}
