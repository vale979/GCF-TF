//Set permission
resource "google_project_iam_member" "cloudbuild_iam" {
  project = var.project_number
  for_each = toset([
    "roles/cloudfunctions.admin",
    "roles/iam.serviceAccountUser"
  ])
  role    = each.key
  member  = "serviceAccount:${var.project_number}@cloudbuild.gserviceaccount.com"
}

//Setting up cloud build trigger from Github repository
resource "google_cloudbuild_trigger" "cf_getdate" {
    location = var.region
    name     = "cf-get-date" //can only be alphanumeric and dash
    //service_account = "projects/${var.project_id}/serviceAccounts/${var.service_account_email}"
    filename = "cloudbuild/cloudbuild.yaml" //cloud build config file
    github {
        owner = var.repo_owner
        name  = var.repo_name
        push {
            branch = "^${var.github_branch}"    //Regex for the branch
        }
    }
    //only include files in the list for the build
    included_files = ["cloudfunctions/**", "cloudbuild/**"]
}
