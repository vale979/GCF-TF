resource "google_cloud_scheduler_job" "cf_date" {
    name      = "cf_date"
    schedule  = "45 11 * * 1-5"
    time_zone = "Asia/Jakarta"

    http_target {
      http_method = "GET"
      uri         = "https://${var.region}-${var.project_id}.cloudfunctions.net/cf_get_date"
    }
}