class MessagesController < ApplicationController

  def index

    @messages = GmailAPI.new.grab_all
    # binding.pry
    render json: @messages
    # @messages = []
    # gmailclient = Gmail.connect('johnandkelseyscoolproject', 'CauchySchwartz')
    # raw_messages = gmailclient.inbox.emails
    #
    # raw_messages.each do |raw_message|
    #   parsed_message = {}
    #   parsed_message[:id] = raw_message.uid
    #   parsed_message[:body] = raw_message.text_part.body.raw_source
    #   parsed_message[:subject] = raw_message.subject
    #   parsed_message[:from] = raw_message.from[0].mailbox + '@' + raw_message.from[0].host
    #   parsed_message[:to] = 'johnandkelseyscoolproject@gmail.com'
    #   parsed_message[:read] = raw_message.read?
    #   parsed_message[:received_date] = raw_message.date
    #   @messages << parsed_message
    # end
    # gmailclient.disconnect
    #
    # respond_to do |format|
    #   format.json { render json: @messages.to_json }
    # end

  end

  def show
    gmailclient = Gmail.connect('johnandkelseyscoolproject', 'CauchySchwartz')
    raw_message = gmailclient.inbox.emails.find{|message| message.uid == params[:id].to_i}
    @message = {}
    @message[:id] = raw_message.uid
    @message[:body] = raw_message.text_part.body.raw_source
    @message[:subject] = raw_message.subject
    @message[:from] = raw_message.from[0].mailbox + '@' + raw_message.from[0].host
    @message[:to] = 'johnandkelseyscoolproject@gmail.com'
    parsed_message[:read] = raw_message.read?
    parsed_message[:received_date] = raw_message.date
    gmailclient.disconnect

    respond_to do |format|
      format.json { render json: @message.to_json }
    end
  end

  private

  def parse_message(raw_message)
    parsed_message = {}
    parsed_message[:id] = raw_message.uid
    parsed_message[:body] = raw_message.text_part.body.raw_source
    parsed_message[:subject] = raw_message.subject
    parsed_message[:from] = raw_message.from[0].mailbox + '@' + raw_message.from[0].host
    parsed_message[:to] = 'johnandkelseyscoolproject@gmail.com'
    parsed_message
  end

end
