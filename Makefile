## Format terraform code
fmt:
	@cd terraform && terraform fmt -recursive

init:
	@cd terraform && terraform init

plan: init
	@cd terraform && terraform plan

apply: init
	@cd terraform && terraform apply
