class ContactPeopleController < InheritedResources::Base
  def permitted_params
    params.permit(contact_person: [:email, :first_name, :last_name, :phone])
  end
end
