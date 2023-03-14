variable "github_repo" {
  type        = string
  description = "Name of the repository in the format <GitHub Org>/<RepoName>"
}

variable "pipeline_yml_name" {
  type        = string
  description = "Template of pipeline filename. i.e var.pipeline_yml_name.yml = .pipeline.yml"
}

variable "project_name" {
  type        = string
  description = "Name of Azure DevOps Project within Organization. The assumption is this was created for the AWS Landing Zone Team"
}

variable "service_connection_id" {
  type        = string
  description = "ID of the Service Endpoint being used"
}

variable "service_connection_name" {
  type        = string
  description = "Name of the Service Endpoint being used"
}