resource "oci_objectstorage_bucket" "object_storage" {
  compartment_id = var.compartment_id
  name = var.bucket_name
  namespace = var.bucket_namespace
  object_events_enabled = var.bucket_object_events_enabled
  storage_tier = var.bucket_storage_tier
  versioning = var.bucket_versioning
}
