class TeamsUsersController < InheritedResources::Base
  def permitted_params
    params.permit(teams_user: [:team_id, :user_id])
  end
end
