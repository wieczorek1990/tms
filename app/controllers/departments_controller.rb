class DepartmentsController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(department: [:name])
  end
end
