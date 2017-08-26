# terraform-drone-with-gcp
terraform and drone with gcp.

## Drone Secrets Sample

export GOOGLE_CREDENTIALS={ "type": "service_account", "... your project credential file json" }
export GOOGLE_PROJECT=your-google-project-id
export BACKEND_CONFIG_BUCKET=your-terraform-remote-state-unique-bucket
