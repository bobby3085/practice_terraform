My First terraform code to create ec2 instance.\n
Structured terraform code into multiple files ( variables.tf, providers.tf, main.tf, inputs.tf, outputs.tf).
It is a best practice that improves readability, maintainability, and reusability.
providers.tf contains information about cloud provider (aws, azure, or GCP) and version.
variables.tf is used to declare all input variablesfor configuration. Defining variables here makes code dyanmic and reusable.
mian.tf contains the primary resource definition for infrastructure. (ex: ec2 instance ami id, type and instance name).
outputs.tf, we can define what we want to get as output after applying code, ex : ip address of created inbstance, keypain name etc.
We should store them in a single working directory.
terraform combines all .tf files in a working directory into a sngle configuration, so contents of seperate files are treated as a single file.
terraform paln--> comamnd performs a dry run of infrastructure changes. its just preview. 
teerrafform apply --> command executes the actions proposed in terraform plan.
after applying terrafrom autocreates few files like terraform.tfstate, make sure they will not get committeed to git by adding them into .gitignore, as they contain sensitive information.
For that we need to create .gitignore
