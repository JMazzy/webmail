class MessagesController < ApplicationController

  def index
    @messages = []
    gmailclient = Gmail.connect('johnandkelseyscoolproject', 'CauchySchwartz') 
    raw_messages = gmailclient.inbox.emails

    raw_messages.each do |message|
      parsed_message = {}
      parsed_message[:id] = message.uid
      parsed_message[:body] = message.text_part.body.raw_source
      parsed_message[:subject] = message.subject
      parsed_message[:from] = message.from[0].mailbox + '@' + message.from[0].host
      parsed_message[:to] = 'johnandkelseyscoolproject@gmail.com'
      @messages << parsed_message
    end
    gmailclient.disconnect

    respond_to do |format|
      format.json { render json: @messages.to_json }
    end

  end

  def show
    @message = Message.find(params[:id])
    respond_to do |format|
      format.json { render json: @message.to_json }
    end
  end

  private
end
