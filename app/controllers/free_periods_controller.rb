class FreePeriodsController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(free_period: [:start_date, :end_date, :user_id, :description])
  end
end
