resource "google_storage_bucket" "sample_bucket" {
  name          = "bdgyzcip-123456789-sample-bucket"
  location      = "ASIA-NORTHEAST1"
  storage_class = "STANDARD"
}

resource "google_storage_bucket_acl" "sample_bucket_acl" {
  bucket         = "${google_storage_bucket.sample_bucket.name}"
  predefined_acl = "projectPrivate"
}
