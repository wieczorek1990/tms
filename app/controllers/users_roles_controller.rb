class UsersRolesController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(users_role: [:user_id, :role_id])
  end
end
