class UsersRolesController < InheritedResources::Base
  def permitted_params
    params.permit(users_role: [:user_id, :role_id])
  end
end
