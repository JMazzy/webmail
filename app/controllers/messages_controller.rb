class MessagesController < ApplicationController

  def index
    # @messages = return_messages
    gmailclient = Gmail.connect('johnandkelseyscoolproject', 'CauchySchwartz') 
    @messages = gmailclient.inbox.emails
    gmailclient.disconnect

    puts 'Messages'
    pp @messages
    pp @messages[2]
    pp @messages[2].message.text_part.body.raw_source
    # @messages.each do |message|
    #   pp message.text_part.body.raw_source
    # end

    # puts "Messages done"
    # respond_to do |format|
    #   format.json { render json: @messages.to_json }
    # end

  end

  def show
    @message = gmail.inbox.emails[:id]
  end

  private

  def return_messages
    messages = []
    gmailclient = Gmail.connect('johnandkelseyscoolproject', 'CauchySchwartz') 
    messages = gmailclient.inbox.emails

    # do |gmail|
    #   messages = gmail.inbox.emails(:unread)
    # end
    # gmailclient.disconnect
    messages
  end
end
