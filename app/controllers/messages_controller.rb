class MessagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @messages=Message.order("id DESC")
  end

  def create
    # binding.pry
    @message=Message.new(message_params)
    @message.username=current_user.email
    @message.save!

  end
  private
  def message_params
    params.require(:message).permit(:message)
  end
end
