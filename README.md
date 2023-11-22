# Introduction

- This project contains few terraform resources ( for ex: resource group and container instance )
- There is ADO pipeline written ( use Azure DevOps to run Pipeline)
- Make sure to follow pre-requisites to create stroage account and service principal
- This would use remote modules.

# Pre-requisites
 - Create Service Prinicipal
 - Add all the details to 'common' group varialbe in ADO
 - Give contributor access to Service Principal
 - Create a storage account, since we store terraform statefile into storage account.
 - Storage account details, store them into 'COMMON' group variable.

  ![Common](./img/common.png)

 * ARM_CLIENT_ID
 * ARM_CLIENT_SECRET
 * ARM_TENANT_ID
 * ARM_SUBSCRIPTION_ID

 * tf_state_rg_name
 * tf_state_st_acc_name
 * tf_state_st_cont_name
 * tf_state_subscription_id
 * tf_state_tenant_id

# Folder Structure
- Modules - which contains modules of terraform
- Pipeline - this folder contains pipeline
- Terraform - this folder contains actual terraform project files ( main.tf, var.tf, provider.tf, backend.tf)

# Pipeline
- Pipeline contains 4 steps, terraform init, validte, plan, apply 
- Make sure to set env variables ( including terraform backend variables) - pls see pre-requisites for more info.

# Jenkins Pipeline

## After successfully deploying the Jenkins image in Azure Container Instances (ACI), follow these steps in the Azure portal:

- Navigate to the "Container" option on the left side of the ACI section.
- Look for the "Logs" option and click on it.
- Scroll down through the logs, and you'll find the password information needed for logging into Jenkins. It will be displayed in a format similar to the image 
  provided below

![jenkins-password](https://github.com/techslateramu/ado-infra-jenkins/assets/123730077/31feb533-a166-4906-a75e-6848587c058c)

- Use this password to log in to Jenkins.

![jenkins-page](https://github.com/techslateramu/ado-infra-jenkins/assets/123730077/5b42bfc9-9ca9-4470-a279-0ebc35a608f5)

## Steps to Create a Simple Jenkins Pipeline:
### Step 1:
-  Create a New Pipeline Project
-  Open the Jenkins dashboard.
-  Click on "New Item" to create a new project.
-  Enter a name for your project, choose "Pipeline," and click "OK."
 ### step 2: 
- Configure Pipeline
- In the project configuration, scroll down to the "Pipeline" section.
- Choose the "Pipeline script" option.
- In the "Definition" dropdown, select "Pipeline script."

### Step 3: 
- Write a Simple Pipeline Script

![first-pipeline](https://github.com/techslateramu/ado-infra-jenkins/assets/123730077/65d709c9-2327-457e-b891-236c21b5fa30)

### Step 4: 
- Save and Run
- Save your pipeline configuration.
- Click on "Build Now" to trigger the pipeline manually.

### Step 5: 
- View Pipeline Results
- Once the pipeline run is initiated, you can view the progress and results on the Jenkins dashboard.

![build success](https://github.com/techslateramu/ado-infra-jenkins/assets/123730077/2e299daa-6eef-4211-8f41-73b149a60580)




