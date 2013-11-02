class TeamsController < InheritedResources::Base
  def permitted_params
    params.permit(team: [:name])
  end
end
