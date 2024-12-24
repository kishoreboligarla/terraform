variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This Is The Amni Id Of Devops Practice Which Is RHEl-9 "
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}
variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "Expense"
        Component = "backend"
        Environment = "Dev"
        terraform = "true"
    }

}

variable "sg_name" {
    default = "allow_ssh"

}
 variable "sg_discription"{
    default  = "allow port no 22 for ssh access"

 }
 
 variable "from_port" {
        default = 22
        type = number
 }

 variable "to_port" {
        default = 22
        type = number
 }

 variable "protocol" {
    default = "tcp"
    
 }

 variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
 }