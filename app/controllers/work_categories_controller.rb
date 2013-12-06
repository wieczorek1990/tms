class WorkCategoriesController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(work_category: [:name])
  end
end
