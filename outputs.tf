output "agent_pool_allowed_projects_id" {
  description = "Map of id values across all agent_pool_allowed_projects, keyed the same as var.agent_pool_allowed_projects except keys with no id are omitted"
  value       = { for k, v in tfe_agent_pool_allowed_projects.agent_pool_allowed_projects : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_pool_allowed_projects_agent_pool_id" {
  description = "Map of agent_pool_id values across all agent_pool_allowed_projects, keyed the same as var.agent_pool_allowed_projects except keys with no agent_pool_id are omitted"
  value       = { for k, v in tfe_agent_pool_allowed_projects.agent_pool_allowed_projects : k => v.agent_pool_id if v.agent_pool_id != null && length(v.agent_pool_id) > 0 }
}
output "agent_pool_allowed_projects_allowed_project_ids" {
  description = "Map of allowed_project_ids values across all agent_pool_allowed_projects, keyed the same as var.agent_pool_allowed_projects except keys with no allowed_project_ids are omitted"
  value       = { for k, v in tfe_agent_pool_allowed_projects.agent_pool_allowed_projects : k => v.allowed_project_ids if v.allowed_project_ids != null && length(v.allowed_project_ids) > 0 }
}

