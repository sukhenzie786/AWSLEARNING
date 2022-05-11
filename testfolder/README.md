# AWSCLI

# AWS-CLI-Load-Balancer-Steps

#1.Create VPC



#2.Create 4 Subnets DB1 , DB2 , WEB1 , WEB2


#3.Create 2 Security Group for LB and  EC2 instances

For LB Security Group Inbound Rule:

For LB Security Group Outbound Rule:

![image](https://user-images.githubusercontent.com/67804886/166088844-6f5a5b53-e018-44f5-bc56-d4c31fafa3ff.png)

For EC2 Security Group Inbound Rule:

![image](https://user-images.githubusercontent.com/67804886/166088935-6f2ebd5c-5a6f-4725-b97c-e1a1c576bab3.png)

For EC2 Security Group Outbound Rule:

![image](https://user-images.githubusercontent.com/67804886/166088972-7f761da4-2243-4dc9-9b9b-f5c5281391a1.png)



Create Internet Gateway


Attach Internet Gateway

![image](https://user-images.githubusercontent.com/67804886/166089522-b3144f7a-e4f4-4c44-89e2-e971671315f2.png)



Create two Route Tables: One for Public Route Table and one for Private Route Table

![image](https://user-images.githubusercontent.com/67804886/166089100-9089c799-9def-424d-8c1f-a0743de19f8c.png)

Public Route Table (Should always be configured with Internet Gateway):-

![image](https://user-images.githubusercontent.com/67804886/166089195-dabed308-6950-4ec0-9c36-f487671c283d.png)

Subnet which connects to internet:-

![image](https://user-images.githubusercontent.com/67804886/166089229-622d028b-4bfd-44c2-9674-9189038f23f5.png)

Private Route Table (Not to be attached with  Internet Gateway):-

![image](https://user-images.githubusercontent.com/67804886/166089320-9006258f-b71c-47bb-a4a6-06415174aa8f.png)

Subnet Associations:- 

![image](https://user-images.githubusercontent.com/67804886/166089448-aec1d63d-055b-4272-844a-f2b7ccb822dd.png)

Use NAT only when u want private insctances to connect to internet:
--------------------------------------------------------------------
![image](https://user-images.githubusercontent.com/67804886/166089678-c12f6bff-69a8-421f-82bd-015247fc61b0.png)



CREATE EC2 INSTANCES

ubuntu ami id:- ami-0892d3c7ee96c0bf7
Make a note of instance type => t2.micro
Make a note of security group name and id => (sg-0ae8a909daac7e7a3  http&ssh&ping)
Make a note of key pair => oregon

Use Elastic IP address if u there is a need to connect to EC2 instance via ssh and delete EIP later on when not required
--------------------------------------------------------------------------------------------

![image](https://user-images.githubusercontent.com/67804886/166089873-79cdc018-0f38-4c0d-8a39-29484c9b4ee6.png)


Create Load Balancer (Classic LB)

Configure-health-check of Load Balancer (Classic LB)

Register-instances-with-load-balancer (Classic LB)

----------------------------------------------
![image](https://user-images.githubusercontent.com/67804886/166089932-fd494041-911d-43b5-885a-89981d98664e.png)


Now Configure Target Group (Application LB):
-------------------------------------------

![image](https://user-images.githubusercontent.com/67804886/166089975-04b40466-d946-46c3-89bb-d7073ac5f637.png)



FINAL STEP:-
-------------
Note down the Load Balancer DNS name and go to browser and enter the DNS name.
























