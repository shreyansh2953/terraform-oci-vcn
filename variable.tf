variable "vcn_cidr_blocks" {
  description = "List of Cidr Block"
  type        = list(string)

}

variable "vcn_name" {
  type = string
  description = "vcn name"
}

variable "defined_tags" {
    type = map(string)
    description = "Defined tags in DevOps Tag Namespace"
  
}

variable "freeform_tags" {
    type = map(string)
    description = "Tags doesn't belong to any namespace"
}

variable "compartment_id" {
    type = string
  
}

variable "dns_label" {
  type = string
}

variable "isAdSpecific" {
    type = list(bool)
  
}

variable "subnet_cidrs" {
    type = list(string)
}

variable "subnet_display_name" {
  type = list(string)
}

variable "isSubnetPrivate" {
    type = list(bool)
  
}

variable "isIGW" {
    type = bool
  
}

variable "isNAT" {
    type = bool
  
}

variable "internet_gateway_display_name" {
    type = string
  
}