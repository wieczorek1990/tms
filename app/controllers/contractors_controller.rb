class ContractorsController < InheritedResources::Base
  def permitted_params
    params.permit(contractor: [:name, :contact_person_id])
  end
end
