# Day 2 - Variables and Multiple Configurations

## Objective
Understand how to use variables and environment-specific configurations.

## What was done
- Defined variables for filename and content
- Created dev.tfvars and prod.tfvars
- Ran Terraform using different variable files

## Commands
terraform apply -var-file="dev.tfvars"  
terraform apply -var-file="prod.tfvars"  

## Outcome
Different files created for development and production environments.
