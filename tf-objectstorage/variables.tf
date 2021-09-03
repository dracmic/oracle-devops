variable compartment_id {
  type=string
  description= "Define the compartment id in which you want to create the Virtual Cloud Network"

}
variable bucket_name {
  type=string
  description = "Define the name for the bucket"
}

variable bucket_namespace {
  type=string
  description = "Define bucket namespace"
}
variable bucket_storage_tier {
  type=string
  description= "Define type of bucket storage tier"
}
variable bucket_versioning {
  type=string
  description = "Define status of bucket versioning"
}
variable bucket_object_events_enabled {
  type=bool
  description="Define if object events should be enabled or not: true or false"
}
