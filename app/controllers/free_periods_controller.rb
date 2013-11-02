class FreePeriodsController < InheritedResources::Base
  def permitted_params
    params.permit(free_period: [:start_date, :end_date, :user_id, :description])
  end
end
