variable "domain_name" {
  type        = string
  description = "Name of the domain"
}

variable "bucket_name" {
  type        = string
  description = "S3 Bucket Name"
}

variable "aws_region" {
  type        = string
  description = "Current AWS Region"

}

variable "profile" {
  type        = string
  description = "IAM Profile"
}