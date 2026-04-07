# main file 
#Resource block syntax:
#resource "<PROVIDER>_<TYPE>""<NAME>"

resource "aws_instance""web_server"{
ami           =var.ami_id
instance_type+var.instance_type

tag={
Name       ="web-${var.enviroment
Enviroment =var.envirment
ManagedBy  ="terraform"
}

root_block_device{
volume_size=20
encrypted=true
}
}
#Reference another resource:
resource"aws_eip""web_ip"{
instance=aws_instance.web_server.id
