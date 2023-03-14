resource "azuredevops_build_definition" "terraform_pipelines" {
  project_id = data.azuredevops_project.azure_cloudhub_project.id
  path       = "\\Subscription Vending"
  name       = "Subscription Vending"

  ci_trigger {
    use_yaml = true
  }

  pull_request_trigger {
    use_yaml       = true
    initial_branch = "main"

    forks {
      enabled       = false
      share_secrets = false
    }
  }

  repository {
    repo_type             = "GitHub"
    repo_id               = var.github_repo
    branch_name           = "refs/heads/main"
    yml_path              = "pipelines/.${var.pipeline_yml_name}.yml"
    service_connection_id = var.service_connection_id
  }
}