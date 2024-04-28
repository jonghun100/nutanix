variable "username" {
  type = string
  description = "nutanix login id"
}
variable "password" {
  type = string
  description = "nutanix login password"
}
variable "endpoint" {
  type      = string
  description = "nutanix url"
}
variable "port" {
  type = string
  description = "nutanix url port"
}


variable "cluster_uuid" {
  type = string
  default = "00061493-6724-e921-0000-00000001a871"
  description = "nutanix cluster uuid"
}

variable "num_vcpus_per_socket" {
  type = string
  default = "4"
  description = "nutanix vcpu num"
}

variable "num_sockets" {
  type = string
  default = "2"
  description = "nutanix vcpu value"
}

variable "memory_size_mib" {
  type = string
  default = "8192"
  description = "nutanix memory value"
}

variable "subnet_uuid" {
  type = string
  default = "56cb1524-6529-4afb-a278-2d3ab5f7e00d"
  description = "nutanix nic uuid"
}

variable "image_uuid" {
 type= string
 default = "f53f30d6-6dbf-40e7-b87f-d49291697409" 
 description = "nutanix image uuid"

}

variable "disk_size_mib" {
  type = string
  default = "100000"

}

# variable "disk_size_bytes" {
#   type = string
#   default = "104857600000"
# }

variable "vm_count" {
  type =  string
  description = "input vm count"
  
}

variable "vm_name" {
  type = string
  default = "bjh-test"
  
}