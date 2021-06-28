#login
az login

#check for default subscription
az account show --output table

# set the right subscription if required
az account set --subscription "test-subscription"

# set a default resource group
az config set defaults.group=CloudSecurityLabDemoRG

# Deploy a test resource - no longer RG is needed
az storage account create --name storage345s998 --location eastus --sku Standard_LRS


# Create an Azure Service Principle
# Assign contributor role
# Look inside app registration
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/subId"


az login --service-principal -u <service_principal_name> -p "<service_principal_password>" --tenant "<service_principal_tenant>"
az account show
az account list --query "[].{name:name, subscriptionId:id}"
az account set --subscription="<subscription_id>"
