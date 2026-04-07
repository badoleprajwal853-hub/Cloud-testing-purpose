variable"environment"{
description ="deployment environment"
type        =string
default     ="dev"
validation{
condition=contains(
["dev","staging","prod"],
var.environment)
error_massage="Invailid env"
}
}
variable "instance_type"{
description="EC2instance type"
type       = string
default    ="t3.micro"
}
