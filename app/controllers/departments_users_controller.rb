class DepartmentsUsersController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(departments_user: [:department_id, :user_id])
  end
end
