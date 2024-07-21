# Project Description
### To show-case CMP & Azure Public Cloud Integration using the custom Instance & Layout Types in CMP. Provision Azure Services, here in this project we are creating CosmosDB (MongoDB) in a new Resource Group

# Technology

* Terraform
* Azure Public Cloud
* Cloud Management Platform

# TODO
* Create a Service Catalog Item from this Instance Type and share it with the subtenants.

# Issues Faced

* While creating the a custom Layout Type: I'm not able to provide the "tfvars" as the secrets in version V. 6.3.0, however, on the youtube videos and documentation it is shown, please advise.
* I've created a custom Instance & Layout Type with Technology=Terraform to provision Azure CosmosDB I have written in my Terraform template to provision in Region = West Europe and this instance will provision new Resource Group, however, while provisioning the Instance [Azure CosomosDB] I've to select the Group -> Cloud [that I've created and integrated] and after provisioning the instance under Resources section of that provisioned instance I can see Resource Pool = Morpheus-RG [which is the one that I've chosen during the initial cloud integration]. Is this a normal behaviour? Is my Instance Type correct? Please advise with proper steps.
* I've created a new custom Instance & Layout Types with TECHNOLOGY=Terraform and integrating with Git where I've curated the Terraform Templates. How can I make use of the Terraform's "modules" capability into this Layout so that I do not repeat the code everytime I create a new Instance/Layout for new Azure/AWS services? Please give some sample code of Morpheus.
