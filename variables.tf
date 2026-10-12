variable "agent_pool_allowed_projects" {
  description = <<EOT
Map of agent_pool_allowed_projects, attributes below
Required:
    - agent_pool_id
    - allowed_project_ids
EOT

  type = map(object({
    agent_pool_id       = string
    allowed_project_ids = set(string)
  }))
}

