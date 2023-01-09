variable "name" {
  
  description = "The resource group name"
  type = string
  
}

variable "location" {
  
  description = "The region where the resource group will be made."
  type = string  
  default = "east-us"
  
  validation {
    condition = contains(["east-us", "east-us2", "west-us", "central-us"], var.location)
    error_message = "The location provided is either not valid or not currently supported."
  }
}
  
