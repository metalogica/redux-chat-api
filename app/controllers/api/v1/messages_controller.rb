class Api::V1::MessagesController < ApplicationController

  def index
    current_channel = find_channel
    messages = Message.all.select { |message| message.channel == current_channel }
    render json: messages
  end

  def create
  end

  private

  def find_channel
    Channel.find_by(name: params[:channel_id])
  end

end
