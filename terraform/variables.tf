//Note that variable inside tfvars file will replace the default
//Providing default value here is optional, you just need to declare them
variable "region" {
    description = "GCP region"
    default     = "us-central1"
}

variable "project_id" {
    description = "GCP Project ID (NOT project number)"
    default     = "utility-unity-377912"
}

variable "zone" {
    description = "GCP zone in a selected region"
    default     = "us-central1-a"
}

variable "service_account" {
    description = "Path to the service account key file"
    default     = "../creds/utility-unity-377912-a160b20a5de7.json"
}

variable "repo_owner" {
    description = "Username of the owner of the Github repository"
}

variable "repo_name" {
    description = "Name of the Github repository"
}

variable "github_branch" {
    description = "Github branch for the Cloud Build trigger"
}