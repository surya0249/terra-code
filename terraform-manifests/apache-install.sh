#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start  
echo "<h1>Welcome to SONATA SOFTWAE LIMITED ! AWS Infra created using Terraform in us-east-2 Region</h1>" | sudo tee /var/www/html/index.html