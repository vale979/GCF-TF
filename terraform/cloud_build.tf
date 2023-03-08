//Setting up cloud build trigger from Github repository
resource "google_cloudbuild_trigger" "cf_getdate" {
    location = var.region
    name     = "cf-get-date" //can only be alphanumeric and dash
    //cloud build config file
    filename = "cloudbuild/cloudbuild.yaml"
    github {
        owner = var.repo_owner
        name  = var.repo_name
        push {
            branch = "^${var.github_branch}"    //Regex for the branch
        }
    }
    //only include files in the list for the build
    included_files = ["cloudfunctions/**"]
}
