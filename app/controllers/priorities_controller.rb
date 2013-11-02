class PrioritiesController < InheritedResources::Base
  def permitted_params
    params.permit(priority: [:name])
  end
end
