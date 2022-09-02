variable eng_version {
  type        = string
  default     = "3.6.0"
  description = "DocumentDB Engine Version"
}


variable username {
  type        = string
  default     = "admin"
  description = "DocumentDB User"
}

variable passwd {
  type        = string
  default     = "admin@123"
  description = "DocumentDB Password"
}


variable inst_class {
  type        = string
  default     = "db.t3.medium"
  description = "DocumentDB Instance Class"
}

variable subnets {
  description = "DocumentDB Subnet IDs"
  type        = list(string)
}

variable sg_id {
  type = list(string)
  description = "DocumentDB Security Groups"
}

variable snapshot {
  type        = string
  default     = null
  description = "Snapshot"
}
