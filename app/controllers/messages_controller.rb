class MessagesController < InheritedResources::Base
  load_and_authorize_resource

  def index
    unless user_signed_in?
      @messages = Message.all
    else
      @messages = Message.where(to_id: current_user.id)
    end
  end

  def create
    @message = Message.new(params[:message].permit!)
    @message.from_id = current_user.id
    create!
  end

  def permitted_params
    params.permit(message: [:from_id, :to_id, :topic, :text])
  end
end
