class MessagesController < InheritedResources::Base
  def permitted_params
    params.permit(message: [:from, :to, :topic, :text])
  end
end
