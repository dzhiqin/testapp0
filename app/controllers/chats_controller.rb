class ChatsController < ApplicationController
  def room
    redirect_to new_user_session_path unless current_user
  end
  
end
