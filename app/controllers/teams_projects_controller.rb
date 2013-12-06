class TeamsProjectsController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(teams_project: [:team_id, :project_id])
  end
end
