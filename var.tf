variable "myami_id" {
#  type =  map
#  rhel = ami-
#  linux = ami-
#  windows = ami-
}

variable "myinstance_type" {
#  type = list
#  default = ["t2.micro","t2.nano","t2.medium"]
#type = list(string)
}

variable "user_id" {
}

variable "jjtech-elb" {
  type = string
}

variable "elb_az" {
  type = list(string)

}
variable "elasp_timeout" {
  type = number

}

variable "myregion" {
}

variable "myprofile" {
}
