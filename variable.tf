variable "bucket_prefix" {  
  type        = string  
  default     = "my-s3bucket-"
  description = “S3 bucket to be created."
  } 

variable "region" {  
  type        = string  
  default     = "us-east-1"  
  description = “AWS S3 bucket to be created."
}

variable "access {
    type        = string
    description = “Default access is private "
    default     = "private"
}

variable "tags" {
    type        = map
    description = "mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}
