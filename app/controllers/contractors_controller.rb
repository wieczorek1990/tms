class ContractorsController < InheritedResources::Base
  def permitted_params
    params.permit(contractor: [:name])
  end
end
