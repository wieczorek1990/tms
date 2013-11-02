class DepartmentsUsersController < InheritedResources::Base
  def permitted_params
    params.permit(departments_user: [:department_id, :user_id])
  end
end
