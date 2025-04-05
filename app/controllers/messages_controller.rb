class MessagesController < ApplicationController
    def create
      ActionCable.server.broadcast("chat_general", {
        user: current_user.name,
        message: params[:message]
      })
  
      head :ok
    end
  end