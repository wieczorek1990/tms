class ContractorsController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(contractor: [:name, :contact_person_id])
  end
end
