#Data source READ existing resources
  #they do NOT Create anything

  #Get latest Amazon Linux 2AMI
  data"aws_ami""amazon_linux"{
  most_recent=true
  owner     =["amazon"]
    filter{
    name   ="name"
    value=["amzn2-ami-hvm-*-x86_64"]
  }
}

#Reference:data.aws_ami.amazon_linux.id

#Read existing VPCby tg
data"aws_vpc" "existing"{
  tag= {Name = "production-vpc"}
}

#Fetch secrets from AWS Secrets Manager
  data"aws_secretmanager_secret_version"
  "db_creds" {secret_id="prod/db"}
