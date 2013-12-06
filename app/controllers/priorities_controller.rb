class PrioritiesController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(priority: [:name])
  end
end
