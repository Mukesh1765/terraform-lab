# Day 4 - Terraform Modules

## Objective
Learn modular infrastructure using Terraform modules.

## What was done
- Created reusable module for nginx container
- Passed variables (name, port, image)
- Used module twice to create multiple containers

## Commands
terraform init  
terraform apply  

## Outcome
Two containers created on ports 8081 and 8082 using reusable module.
