# Launch the instance and connect to it via SSH:
ssh -i <your-key-pair.pem> ec2-user@<EC2-public-IP> # Change with your key pair file and your public-IP

# Update the instance and install the PostgreSQL client:
sudo yum update -y
sudo amazon-linux-extras enable postgresql14
sudo yum install postgresql -y

#Use the following command to connect to the RDS database:
psql -h <RDS-endpoint> -U postgres -d postgres  # Change RDS-endpoint with yours 

#Log in as the kong user to test connectivity:
psql -h <RDS-endpoint> -U kong -d postgres # Change RDS-endpoint with yours 

#Log in as the readwrite user:
psql -h <RDS-endpoint> -U readwrite -d postgres # Change RDS-endpoint with yours 

#Log in as the readonly user:
psql -h <RDS-endpoint> -U readonly -d postgres # Change RDS-endpoint with yours

