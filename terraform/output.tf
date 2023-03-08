output "cf_trigger_url" {
    description = "URL to trigger the cloud function"
    value       = "https://${var.region}-${var.project_id}.cloudfunctions.net/cf_get_date"
}