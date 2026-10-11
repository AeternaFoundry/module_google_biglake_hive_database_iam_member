variable "biglake_hive_database_iam_members" {
  description = <<EOT
Map of biglake_hive_database_iam_members, attributes below
Required:
    - catalog
    - member
    - name
    - role
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    catalog = string
    member  = string
    name    = string
    role    = string
    project = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

