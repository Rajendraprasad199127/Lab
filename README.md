# wpp-it-azure-subscription-vending
WPP Azure subscription vending machine

## About The Project
This project is responsible for vending subscriptions for the WPP Azure Landing Zone platform. All subscriptions should be handled and created via this repository. This repository is also responsible for creating TFE workspaces for the connectivity subscriptions and for holding the baseline resources project.

### Built With
* [Make](https://www.gnu.org/software/make/)
* [Docker](https://www.docker.com/)
* [docker-compose](https://docs.docker.com/compose/)
* [Terraform](https://www.terraform.io/)
* [Terraform Enterprise](https://www.terraform.io/enterprise)
* [pre-commit](https://pre-commit.com/)

## Getting Started
To get a local copy up and running follow these simple example steps.

### Prerequisites
Ensure you are authorised to Azure with the relevant credentials set 

```
  export ARM_CLIENT_ID=<insert client_id>
  export ARM_CLIENT_SECRET=<insert client secret>
  export ARM_TENANT_ID=<insert tenant id>
  export ARM_SUBSCRIPTION_ID=<insert subscription id> 
```

Ensure you have the Terraform Workspace set for Subscription Vending. The backend stipulates the usage of `wpp-it-azure-subscription-vending-` prefix. Developers need to ensure they set the suffix as below -

*Example - If deploying subscriptions for grpm*

```
export TF_WORKSPACE=grpm
```

### Installation
1. Install Docker from https://docs.docker.com/get-docker/
2. Please follow the instructions in the repo readme below to install - https://github.com/antonbabenko/pre-commit-terraform/blob/master/README.md

## Usage
terraform **init**

```
make init OpGroup="grpm"
```

terraform **plan**

```
make plan OpGroup="grpm"
```

terraform **apply**

```
make apply OpGroup="grpm"
```

The OpGroup flag refers to the below line in the terraform commands. 

```
-var-file=configuration/${OpGroup}/${OpGroup}.tfvars 
```


### Add a new subscription 
1. Enter the `configuration/<selected opgroup>` i.e `configuration/grpm`
2. Find the OpGroup .tfvars files inside of the folder i.e `grpm.tfvars` 
3. Find the `subscription_list` variable
4. Add the following block below - 

```
    // Template 
    opgroup = "<opgroup-code>"
    {
        subscription_name                   = "<name of subscription>"
        management_group_id                 = "<management group>"
        is_connectivity_sub                 = <true or false>, optional field. Creates the necessary TFE workspaces if set to true.
        connectivity_hub_locations          = ["uks", "ase"] optional field required if creating connectivity subscription. Creates workspaces for each location.
        is_arc_enabled                      = <true or false>, optional field. adds an ARC tag to the subscription if set to true.
        is_avs_enabled                      = <true or false>, optional field. adds an AVS tag to the subscription if set to true.
        enable_management_group_association = <true or false>, sets whether to associate the subscription with the given management group, required field.
        key                                 = "<Key of the Subscription> - please refer to the latest value in the variable and increment 1 to that"
    },
```

### Subscription key
Each subscription has a key field which needs incrementing. The key is used in Terraform as a subscription identifier to allow the subscription to be renamed without having to be destroyed/recreated, which would happen if the key was the subscription name. If deleting a subscription from this list, it is safe to re-use the original key once an apply has successfully deleted the necessary subscription.

## Contact
Created by the Contino WPP CloudHub Azure Team

- Rob Longdon - rob.longdon@wpp.com
- Adam Sir - adam.sir@wpp.com
- Andrew Hodgson - Andrew.Hodgson@wpp.com
- Jack Sheppard - Jack.Sheppard@wpp.com
- Jake Bowles - Jake.Bowles@wpp.com
- Soroush Atarod - Soroush.Atarod@wpp.com
- Alex French - Alex.French@wpp.com
- Giovanni Fleres - Giovanni.Fleres@wpp.com
- Paul Brown - Paul.Brown@wpp.com
- Aziz Hussain - Aziz.Hussain@wpp.com

## Pipeline
The pipeline for this repository is handled in two places. 

1) The Azure DevOps configuration is located in the `pipelines/azdo` folder where there is Terraform that configures the pipeline with CI Trigger and PR Trigger settings. 
2) The actual pipeline code which is located in `pipelines/pipeline.yml` and handles execution of the Terraform code in this repository. The `pipeline.yml` consumes the template located in [https://github.com/WPP-Internal/wpp-it-azure-terraform-pipeline-template](https://github.com/WPP-Internal/wpp-it-azure-terraform-pipeline-template) 

### Pipeline Authorisation
Template Configuration

```
AZDO_ORG_SERVICE_URL=<AzDo Organisation URL>
AZDO_PERSONAL_ACCESS_TOKEN=<Personal Access Token - generate from AzDo UI>
AZDO_GITHUB_SERVICE_CONNECTION_PAT=<Github Token - generate from Github UI>
```

```
AZDO_ORG_SERVICE_URL=https://dev.azure.com/WPP-IT
AZDO_PERSONAL_ACCESS_TOKEN=<token here>
AZDO_GITHUB_SERVICE_CONNECTION_PAT=ghp_<rest of token here - will start with ghp>
```

### Create/Edit/Destroy Pipelines
To create/destroy/change pipelines the `Makefile` has commands that look like the below

```
make pipeline-init    # terraform init - in pipeline directory
make pipeline-plan    # terraform plan - in pipeline directory
make pipeline         # terraform apply - in pipeline directory
make pipeline-destroy # terraform destroy - in pipeline directory
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.11 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.35 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.36.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_subscription_vending"></a> [subscription\_vending](#module\_subscription\_vending) | ./modules/subvend | n/a |

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.connectivity](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.firewall](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.tfe_workspace](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_organization.organization](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account_name"></a> [billing\_account\_name](#input\_billing\_account\_name) | billing\_account\_name for EA | `string` | `"69793823"` | no |
| <a name="input_deploy_default_resources"></a> [deploy\_default\_resources](#input\_deploy\_default\_resources) | Deploy default resources? | `bool` | `"false"` | no |
| <a name="input_enrollment_account_name"></a> [enrollment\_account\_name](#input\_enrollment\_account\_name) | enrollment\_account\_name for EA | `string` | `"286557"` | no |
| <a name="input_opgroup"></a> [opgroup](#input\_opgroup) | Name of the Group, used for connectivity subscriptions to derive the Terraform workspace name | `string` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | Name of Terraform organization | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `string` | `"f243d7f2-78b5-4af6-8668-88613b170ae4"` | no |
| <a name="input_subscription_list"></a> [subscription\_list](#input\_subscription\_list) | n/a | <pre>list(object({<br>    key                                 = number<br>    subscription_name                   = string<br>    management_group_id                 = string<br>    is_connectivity_sub                 = bool<br>    environment                         = optional(string, "Production")<br>    connectivity_hub_locations          = optional(list(string), null)<br>    is_arc_enabled                      = optional(bool, false)<br>    is_avs_enabled                      = optional(bool, false)<br>    enable_management_group_association = bool<br>  }))</pre> | n/a | yes |
| <a name="input_tfe_hostname"></a> [tfe\_hostname](#input\_tfe\_hostname) | Token for TFE passed in from the pipeline | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subscription_count"></a> [subscription\_count](#output\_subscription\_count) | n/a |
| <a name="output_subscriptions"></a> [subscriptions](#output\_subscriptions) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
