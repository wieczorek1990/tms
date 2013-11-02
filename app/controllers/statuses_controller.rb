class StatusesController < InheritedResources::Base
  def permitted_params
    params.permit(status: [:name])
  end
end
