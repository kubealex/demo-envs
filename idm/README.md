# IDM Demo env installer

This is a simple demo environment provisioner for IdM to install.

## VM setup

VM setup is based on Terraform, it instantiates two virtual machine, *idm-server* and *idm-client*, kickstarting the setup.

First you need to download and install Terraform:


Then you need to download the FULL RHEL8 image and link it in the modules folder
