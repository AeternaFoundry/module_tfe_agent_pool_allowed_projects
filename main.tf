resource "tfe_agent_pool_allowed_projects" "agent_pool_allowed_projects" {
  for_each = var.agent_pool_allowed_projects

  agent_pool_id       = each.value.agent_pool_id
  allowed_project_ids = each.value.allowed_project_ids
}

