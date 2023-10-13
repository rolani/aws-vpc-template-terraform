all: clean apply

init:
	terraform init
	terraform get

plan: validate
	terraform plan -out=tf.plan

apply: plan
	terraform apply tf.plan

clean:
	rm -f tf.plan
	rm -rf .terraform*
	rm -rf *.tfstate*

validate: init
	terraform validate

destroy:
	terraform destroy -auto-approve