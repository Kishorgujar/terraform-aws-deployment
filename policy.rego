package terraform.s3

# Allow creation of S3 buckets
allow {
    input.operation == "create"
}

# Deny updates to S3 buckets if any tags are being modified
deny {
    input.operation == "update"
    input.resource.type == "aws_s3_bucket"
    modified_tags := input.resource.change.after.tags
    original_tags := input.resource.change.before.tags
    # Check if the tags are modified by comparing original and modified tags
    modified_tags != original_tags
}
