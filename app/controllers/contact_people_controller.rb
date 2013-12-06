class ContactPeopleController < InheritedResources::Base
  load_and_authorize_resource

  def permitted_params
    params.permit(contact_person: [:email, :first_name, :last_name, :phone])
  end
end
