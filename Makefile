include .env
export

tf-init:
	terraform init -backend-config="conn_str=$(DATABASE_URL)"

tf-plan:
	terraform plan

tf-apply:
	terraform apply
