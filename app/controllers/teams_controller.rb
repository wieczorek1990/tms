class TeamsController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(team: [:name])
  end
end
