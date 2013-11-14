class ContractorsProjectsController < InheritedResources::Base
  def permitted_params
    params.permit(contractors_project: [:contractor_id, :project_id])
  end
end
