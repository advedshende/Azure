variable "project_tags" {
    description = "Map of project tags to be applied to resources"
    type        = map(string)
    default     = {
        project = "example-project"
        owner   = "example-owner"
        cost_center = "example-cost-center"
    }
  
}