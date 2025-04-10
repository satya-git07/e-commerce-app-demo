bucket_name           = "return-of-the-dragon"  # Replace with a unique bucket name
bucket_location       = "US"  # You can change the location if needed
bucket_storage_class  = "STANDARD"  # You can change the storage class if needed
uniform_bucket_level_access = true  # Keep true unless you have a reason to disable it
backend_bucket_name   = "my-tf-state-bucket"  # Replace with the name of your backend bucket
backend_prefix        = "terraform/state"  # Path for state file storage in the backend
