class StaticpagesController < ApplicationController
  def index
    session['email'] = env["omniauth.auth"].info.email
    session['token'] = env["omniauth.auth"].credentials.token
  end

  def login
  end
end
