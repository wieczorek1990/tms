class WorkCategoriesController < InheritedResources::Base
  def permitted_params
    params.permit(work_category: [:name])
  end
end
