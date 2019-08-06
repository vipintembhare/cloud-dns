resource "google_dns_record_set" "frontend" {
  name = "${google_dns_managed_zone.dev.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = "${google_dns_managed_zone.dev.name}"

  rrdatas = ["35.238.109.44"]
}
resource "google_dns_managed_zone" "dev" {
  name     = "dev"
  dns_name = "config-server-service.dev."
  visibility = "private"

  private_visibility_config {
    networks {
      network_url =  "default"
    }
  }
}
