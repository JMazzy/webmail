class MessagesController < ApplicationController
  before_action :login

  def index
    @messages = gmail.inbox.emails
  end

  def show
    @message = 
  end

  private

  def login
    gmail = Gmail.connect(username, password)
  end
end
