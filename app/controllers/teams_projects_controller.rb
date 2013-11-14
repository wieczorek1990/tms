class TeamsProjectsController < InheritedResources::Base
  def permitted_params
    params.permit(teams_project: [:team_id, :project_id])
  end
end
