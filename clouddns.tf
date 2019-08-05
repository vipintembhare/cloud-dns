resource "google_dns_record_set" "frontend" {
  name = "${google_dns_managed_zone.dev.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = "${google_dns_managed_zone.dev.name}"

  rrdatas = ["35.224.18.23"]
}
resource "google_dns_managed_zone" "dev" {
  name     = "dev"
  dns_name = "config-server-service."
}
