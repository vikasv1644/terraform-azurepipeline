# terraform-azure-pipeline
1) In Azure Pipeline have declared parameters that will be passed as an inputs to the terraform attributes as required.

2) Stored service connection as a secret in the variable and trying to access it in the pipeline using environmental variable.

3) Pipeline consists of three stages as following:
  
  a) First stage consists of installing terraform and performing initialization and validation of terraform script using init and validate command.
  
  b) Apart from initialization and validation first stage also comprises of storing tenant(tenant_id), client id (app id), client secret (password) and subscription id as an environmental variable that can be referenced by terraform to authenticate.
  
  c) Second stage consist mainly of passing the values required by terraform plan command.
  
  d) Third stage comprises of applying the changes and creating required resources.

4) Created resource group storage account and container as "rg-test-eastus-01", "stgtesteastus01" and "tfstate" respectively on prior basis to store the state file created by terraform.

5) Resources created as a part of the task are resource group, virtual network, subnet, virtual network interface, virtual machine along with the creation of user an group after provisioning of the VM and cosmos DB resource to select the kind of db account to be created at runtime.

6) Followings are present in the output:
   a) Random password generated for the admin user.
   
   b) Connection url of the cosmos db account.
   
   c) Primary read only key of the cosmos db account.

7) Some values of VM creation like (type of VM server and it's specification)is not passed as an parameter because value present in the form of type map and was facing issue while parsing the parameter in the yaml. But will continue to look into it and will update repo accordingly.
