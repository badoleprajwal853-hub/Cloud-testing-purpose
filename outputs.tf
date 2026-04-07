output"web_server_ip"{
description="public IP of web server"
value      = aws_epic.web_ip.public_ip
}

output"instance_id"{
value     = aws_instance.web_server.id
sensitive = false
}
