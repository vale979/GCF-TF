// Setup permission
provider "google" {
    credentials = file(var.service_account)
    project     = var.project_id
    region      = var.region
    zone        = var.zone
}