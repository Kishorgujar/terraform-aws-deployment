package terraform.s3

allow {
    input.operation == "create"
}

deny {
    input.operation == "update"
    input.resource.type == "aws_s3_bucket"
    tags := input.resource.change.after.tags
    count(tags) > 0
}

