# scripts
variable "source_scripts" {
  type = string
}

variable "destination_scripts" {
  type = string
}

variable "objects_to_copy_scripts" {
  description = "List of objects to copy from the source to the destination bucket."
  type        = list(string)
}

# spark-ui-logs
variable "source_spark-ui-logs" {
  type = string
}

variable "destination_spark-ui-logs" {
  type = string
}

variable "objects_to_copy_spark-ui-logs" {
  description = "List of objects to copy from the source to the destination bucket."
  type        = list(string)
}

# staging
variable "source_staging" {
  type = string
}

variable "destination_staging" {
  type = string
}

variable "objects_to_copy_staging" {
  description = "List of objects to copy from the source to the destination bucket."
  type        = list(string)
}

# temp
variable "source_temp" {
  type = string
}

variable "destination_temp" {
  type = string
}

variable "objects_to_copy_temp" {
  description = "List of objects to copy from the source to the destination bucket."
  type        = list(string)
}

