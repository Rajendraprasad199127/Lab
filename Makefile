WORK_DIR:=/infra

init:
	docker-compose run --rm -w "$(WORK_DIR)" terraform init -input=false $(arg)

validate:
	docker-compose run --rm -w "$(WORK_DIR)" terraform validate

plan: validate-opgroup validate-workspace
	docker-compose run --rm -w "$(WORK_DIR)" terraform plan -var-file=configuration/$(OPGROUP)/$(OPGROUP).tfvars $(arg)

output:
	docker-compose run --rm -w "$(WORK_DIR)" terraform output

apply: validate-opgroup validate-workspace
	docker-compose run --rm -w "$(WORK_DIR)" terraform apply --auto-approve -var-file=configuration/$(OPGROUP)/$(OPGROUP).tfvars

destroy-plan: validate-opgroup validate-workspace
	docker-compose run --rm -w "$(WORK_DIR)" terraform workspace select $(OPGROUP)
	docker-compose run --rm -w "$(WORK_DIR)" terraform plan -destroy -var-file=configuration/$(OPGROUP)/$(OPGROUP).tfvars

destroy: validate-opgroup validate-workspace
	docker-compose run --rm -w "$(WORK_DIR)" terraform workspace select $(OPGROUP)
	docker-compose run --rm -w "$(WORK_DIR)" terraform destroy --auto-approve -var-file=configuration/$(OPGROUP)/$(OPGROUP).tfvars

show:
	docker-compose run --rm -w "$(WORK_DIR)" terraform show $(arg)

checkov-xml: validate-opgroup validate-workspace
	docker-compose run checkov \
			  -f ./$(OPGROUP)-plan.json \
              --config-file ./pipelines/.checkov.yml \
              --output junitxml \
              > scan-result-$(OPGROUP).xml

pipeline-init:
	echo $(shell pwd)
	docker-compose run --rm -w "$(WORK_DIR)/pipelines/azdo" terraform init -migrate-state -upgrade

pipeline-plan:
	docker-compose run --rm -w "$(WORK_DIR)/pipelines/azdo" terraform plan

pipeline:
	docker-compose run --rm -w "$(WORK_DIR)/pipelines/azdo" terraform apply --auto-approve

pipeline-destroy:
	docker-compose run --rm -w "$(WORK_DIR)/pipelines/azdo" terraform destroy


clean: validate-opgroup
	rm -rf ./$(OPGROUP)-plan.binary ./$(OPGROUP)-plan.json

fmt-check:
	docker-compose run --rm -w "$(WORK_DIR)" terraform fmt --recursive -check

fmt:
	docker-compose run --rm -w "$(WORK_DIR)" terraform fmt --recursive

login:
	docker-compose run --rm -w "$(WORK_DIR)" terraform login iac.wpp.cloud

debug1:
	@echo 'var-file: $(OPGROUP)'
	debug: ## terraform debug: Enters the docker container for you so you can run commands and/or check configurations

debug: 
	docker-compose run --rm -w "$(WORK_DIR)" --entrypoint /bin/sh terraform

validate-opgroup:
ifndef OPGROUP
	$(error [ERROR] Please define an OPGROUP - i.e OPGROUP=grpm)
endif

validate-workspace:
ifndef TF_WORKSPACE
	$(error [ERROR] Please define a Terraform WORKSPACE - i.e export TF_WORKSPACE=grpm)
endif
