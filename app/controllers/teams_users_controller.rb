class TeamsUsersController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(teams_user: [:team_id, :user_id])
  end
end
