# AWS-RDS-Setup
Project to set up an RDS instance, connect via EC2, and manage database users.
This project provides a step-by-step guide to setting up an AWS RDS PostgreSQL instance and connecting to it using an EC2 instance. It includes configuring the database with multiple users (postgres, kong, readwrite, and readonly), each assigned specific roles and permissions to manage access control effectively.

# Key components of the project:-
RDS Setup: Instructions to create and configure an Amazon RDS PostgreSQL database.
EC2 Instance: Steps to launch and configure an EC2 instance for accessing the RDS database.
Database Configuration: SQL scripts to create users and define their permissions, ensuring secure and structured access.
Testing: Guidelines to verify connectivity and permissions for each user.

# Prerequisites
- AWS account
- PostgreSQL client installed

  
# Instructions:-

Step 1: Create the RDS Instance

Step 2: Launch an EC2 Instance and Install PostgreSQL Client
       2.1 Launch an EC2 Instance
       2.2 Install PostgreSQL Client on EC2

Step 3: Connect EC2 to RDS

Step 4: Configure the Database Users
       4.1 Create Additional Users

Step 5: Test User Permissions
