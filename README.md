
![TechSlate](img/ts.png)

# <span style="color: lightgreen;">**Executing an Infrastructure Pipeline to create Jenkins application and run pipelines in jenkins**</span>


# <span style="color: lightpink;">Introduction

- **What is ``Infra Pipeline``** ?

    An **``infrastructure pipeline``** refers to a set of automated processes and tools designed to manage, deploy, and maintain the underlying infrastructure components of a software application. This pipeline streamlines the provisioning and configuration of infrastructure resources, ensuring consistency and reliability in the deployment process. It typically includes stages such as infrastructure as code (IaC) definition, testing, deployment, and monitoring..

- This project contains few terraform resources ( for ex: ``resource group`` & ``Container Instancess``. )
- There is ADO pipeline written ( use Azure DevOps to run Pipeline)
- Make sure to follow pre-requisites to create stroage account and service principal

# <span style="color: lightpink;">Pre-requisites
 - **Create Service Prinicipal.**
 - **Add all the details to 'common' group varialbe in ADO.**
 - **Give contributor access to Service Principal.**
 - **Create a storage account, since we store terraform statefile into storage account.**
 - **Storage account details, store them into ``COMMON`` group variable.**

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

# <span style="color: lightpink;">Folder Structure
- Modules - which contains modules of terraform
- Pipeline - this folder contains pipeline
- Terraform - this folder contains actual terraform project files ( main.tf, var.tf, provider.tf, backend.tf)

# <span style="color: lightpink;">Pipeline
- Pipeline contains 4 steps, terraform init, validte, plan, apply 
- Make sure to set env variables ( including terraform backend variables) - pls see pre-requisites for more info.


# <span style="color: lightpink;">Process

### 1. **First step to begin with , Open your VS CODE and do ``clone`` the repository .**

 ![Calc](./img/git-clone.png)

### 2. **Refer to the script properly and understand the process and steps.**

 ![Calc](./img/pip.yaml.png) 

### 3. **Now come back to https://dev.azure.com/ (Azure DevOps) and Import your repository here.**

 ![Calc](./img/import.png)   

### 4. Repository imported successfully , now lets just check whether mentioned group variables in the pipeline are created in Azure DevOps Library or not .

![Calc](./img/clone.png)

### 5. Let's go back to the ``Library`` and confirm the presence of group varaibles i.e, ``Common`` and ``env-dev``. Make sure that below , Resource Group , Storage Account and Container are created in portal and names as it is .

- <span style="color: gold;">tf_state_rg_name
- <span style="color: gold;">tf_state_st_acc_name
- <span style="color: gold;">tf_state_st_cont_name

![Calc](./img/common.png)

![Calc](./img/env-dev.png)


### 6. Now let's run the pipeline , Click on ``New Pipeline`` .

![Calc](./img/pipeline.png)

### 7. Select  ``Azure Repos Gits`` .

![Calc](./img/azure-git.png)

### 8. Select the Repository .

![Calc](./img/select-repo.png)

### 9. Click on ``Existing Azure Pipelines YAML file`` .

![Calc](./img/exist-pipe.png)

### 10. Select the Pipeline Path & Click on ``Continue`` .

![Calc](./img/path.png)

### 11.  Click on ``RUN`` .

![Calc](./img/run.png)

### 12. The pipeline has started to Run , Lets wait for sometime .

![Calc](./img/wait.png)

### 13. So, when the pipeline got initialised it will ask you to permit to access the Group Variables , you need to click on ``Permit`` for both the Group Variables .

![Calc](./img/permit.png)

### 14. The Pipeline has run Sucessfully.

![Calc](./img/succ-pipe.png)

### 15. Now, Lets get back to the Azure Portal and see if our resources got created successfully and running. 
![Calc](./img/rg-ci.png)

### 16. Open the Container instance and copy the FQDN , paste in the new tab , and add port number ``:8080`` to the dns name.. 
![Calc](./img/fqdn.png)

![Calc](./img/8080.png)

### 17. After successfully deploying the Jenkins image in Azure Container Instances (ACI), follow these steps in the Azure portal:

- **Navigate to the ``"Container"`` option on the left side of the ACI section.**
- **Look for the ``"Logs"`` option and click on it.**
- **Scroll down through the logs, and you'll find the ``password`` information needed for logging into Jenkins. It will be displayed in a format similar to the image provided below**

![jenkins-password](./img/logs.png)

### 18. Use this password to log in to Jenkins. Click on ``Continue`` .

![jenkins-page](./img/password.png)

![jenkins-page](./img/paste.png)

### 19 . After the smooth installation process , the jenkins is running successfully.

![jenkins-page](./img/jenkins.png)


# <span style="color: lightpink;">Jenkins Pipeline

## <span style="color: lightgreen;">Steps to Create a Simple Jenkins Pipeline:
### <span style="color: gold;">Step 1:
-  **Create a New Pipeline Project**
-  **Open the Jenkins dashboard.**
-  **Click on ``"New Item"`` to create a new project.**
-  **Enter a ``"name for your project"``, choose ``"Pipeline"`` and click ``"OK."``**

![jenkins-page](./img/pipeline-task.png)

 ### <span style="color: gold;">Step 2: 
- **Configure Pipeline**
![jenkins-page](./img/pipe-config.png)
- **In the project configuration, scroll down to the ``"Pipeline"`` section.**
- **Choose the ``"Pipeline script"`` option.**
- **In the "Definition" dropdown, select ``"Pipeline script."``**
![jenkins-page](./img/sample.png)

### <span style="color: gold;">Step 3: 

- **Write a Simple Pipeline Script.**

![first-pipeline](./img/pipe-script.png)

### <span style="color: gold;">Step 4: 
- **Save and Run.**
- **Save your pipeline configuration.**
- **Click on ``"Build Now"`` to trigger the pipeline manually.**

![first-pipeline](./img/build.png)

### Step 5: 
- View Pipeline Results
- Once the pipeline run is initiated, you can view the progress and results on the Jenkins dashboard.

![build success](./img/tech-pipe.png)




