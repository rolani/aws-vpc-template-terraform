# VPC Test scripts

Terraform scripts for quickly setting up vpc(multiple) with public and private subnets.

Make sure you are in the root directory.

First, Initialize the terraform module:

`terraform init`

Then generate the play:

`terraform plan -out plan`

After confirmation of the plan apply it:

`terraform apply plan`

After making modifications, rerunning and confirming plan and apply plan will update the infrastructure.

Once testing is done you can tear down everything managed by this module by:

`terraform plan -destroy -out plan`
`terraform apply plan`

An alternative is to use the Makefile:

`make apply`

To destroy and cleanup:

`make destroy`

`make clean`