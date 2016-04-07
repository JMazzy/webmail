class MessagesController < ApplicationController

  def index
    @messages = return_messages
    puts 'Messages'
    pp @messages
    puts "Messages done"
    respond_to do |format|
      format.json { render json: @messages.to_json }
    end
  end

  def show
    @message = gmail.inbox.emails[:id]
  end

  private

  def return_messages
    messages = []
    Gmail.connect('johnandkelseyscoolproject', 'CauchySchwartz') do |gmail|
      messages = gmail.inbox.emails(:unread)
    end
    messages
  end
end
