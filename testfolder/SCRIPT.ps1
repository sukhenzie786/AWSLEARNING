# AWSCLI

##AWS CLI to Create AMI for a VM

aws ec2 create-image --instance-id "i-0b78aeb7062c7ed37"  --name "jenkinsmaster" --description "AMI for jenkinsmaster"


##AWS CLI command to copy AMI image from one region to another

 aws ec2 copy-image --region "us-east-1" --name "ami-name" --source-region "us-west-2" --source-image-id "ami-0b0bf325b05738230" --description "This is my jenkinsmaster AMI image"
 
 
## AWSL CLI to create Security Group

aws ec2 create-security-group --group-name "MySecurityGroup" --description "My First security group" --vpc-id "vpc-0a495e72"

##AWS CLI to authorize security group for allowing inbound communication on port 22 , 8080 & 443

aws ec2 authorize-security-group-ingress --group-id "sg-0cc8f99bc7e70eaa5" --protocol tcp --"port 22" --"port 8080" --port "443" --cidr 103.177.112.67/32

##AWS CLI to create VM instance with Tags

aws ec2 run-instances --image-id "ami-0cb4e786f15603b0d" --count "1" --instance-type "t2.micro" --key-name "mysite1" --security-group-ids "sg-0cc8f99bc7e70eaa5" --subnet-id "subnet-186eec52" --tag-specifications 'ResourceType=instance,Tags=[{Key=webserver,Value=production}]'




##AWS CLI to create VPC

aws ec2 create-vpc --cidr-block 10.10.0.0/16  --tag-specifications 



