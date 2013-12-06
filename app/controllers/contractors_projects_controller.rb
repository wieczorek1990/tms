class ContractorsProjectsController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(contractors_project: [:contractor_id, :project_id])
  end
end
