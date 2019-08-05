provider "google" {
	credentials = "${file("./creds/serviceaccount.json")}"
	project     = "conference-console"
        region      = "europe-west1"
}
