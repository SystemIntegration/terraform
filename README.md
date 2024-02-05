# VPC Architecture in Terraform

This Terraform project defines the infrastructure for a Virtual Private Cloud (VPC) on AWS. The VPC includes subnets, security groups, an internet gateway, route table and an EC2 instance. Additionally, the project integrates an S3 bucket with versioning to store Terraform state files securely.

## Prerequisites

Before you begin, ensure that you have the following prerequisites:

- [Terraform](https://www.terraform.io/) installed
- [Provider CLI](link_to_provider_cli) installed (e.g., AWS CLI for AWS provider)

## Getting Started

1. Configure with provider using AWS CLI:
   
   1. Using `aws configure` command you can configure your AWS CLI settings, including your AWS access key, secret key, default region, and output format.
   2.   AWS Access Key ID [None]: YOUR_ACCESS_KEY
        AWS Secret Access Key [None]: YOUR_SECRET_KEY
        Default region name [None]: us-east-1
        Default output format [None]: json
   3. Retrieve details from AWS IAM and configure with AWS. 

2. Clone this project in your local machine

	git clone "project https URL"	

	cd "project directory"
	
3. Initialize Terraform:

    ```bash
    `terraform init`
    ```
    After successfully initializing, start creating the Terraform module structure.

4. Project's modules and files according to below structure
   
        vpc-structure/
            |-- global/
            |   |-- Security-group/
            |       |-- main.tf
            |       |-- variables.tf
            |       |-- outputs.tf
            |   |-- main.tf
            |   |-- variable.tf
            |   |-- output.tf
            |
            |-- modules/
            |   |-- /ec2
            |       |-- main.tf
            |       |-- variables.tf
            |       |-- outputs.tf
            |   |-- /s3
            |       |-- main.tf
            |       |-- variables.tf
            |       |-- outputs.tf
            |   |-- /vpc
            |       |-- main.tf
            |       |-- variables.tf
            |       |-- outputs.tf
            |   |-- main.tf     #
            |   |-- variable.tf
            |   |-- output.tf.tf
            |
            |-- backend.tf
            |-- variables.tf
            |-- main.tf         #global main.tf
            |-- outputs.tf
            |-- .gitignore
         |-- README.md

4.  ## modules
    1. Define EC2, S3, and VPC modules in "modules" main.tf.
    2. Create resources according to this structure and use the module to connect modules as child modules in their parent's main.tf file.
       

5. ## variables and outputs
   1. In Terraform modules, `variables.tf` enables customization with input variables, while `output.tf` defines valuable outputs for reference. Users can customize configurations and seamlessly integrate outputs for modular and scalable infrastructure design.

6. ## created applications
   1. #global module
      1.  Creates a security group with inbound and outbound rules.
   2. #modules module
      1. Creates a VPC, subnet, internet gateway, and route table associated with the subnet.
      2. Creates an S3 bucket with versioning enabled.
      3. Creates an EC2 instance.

    

## Deployment terraform commands in terminal

1.  `terraform init` --> Initializes a Terraform project, downloading necessary providers and modules, preparing  the working directory for configuration. Whenever a new module is created, this command needs to be run.

2.  `terraform plan` --> Previews changes to infrastructure before applying. Displays a detailed execution plan, allowing users to review and confirm modifications. This command provides a pre-plan about our structure.

3. `terraform apply` --> Applies changes to infrastructure as per the execution plan. Deploys and provisions resources based on the configured Terraform files. This is the primary command that affects our cloud and creates architecture according to our code.

4.  `terraform destroy` --> Tears down and removes all resources provisioned by Terraform, providing a controlled way to decommission infrastructure. Deletes all applications created in our cloud.


## public-ip
--> Retrieve application details, including IP addresses and names, using the output.tf. Use these values to connect our instance server with our system and for creating additional applications.

## This Terraform project orchestrates an AWS VPC with modular components—subnets, security groups, internet gateway, and an EC2 instance. Users configure AWS CLI, initialize, and follow a structured process. The README guides through deployment, customization, and destruction, emphasizing AWS CLI setup, variable use, and output utilization. The versioned S3 bucket enhances security for Terraform state files. Overall, the README ensures a streamlined user experience for VPC creation and management.
