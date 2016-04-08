class StaticpagesController < ApplicationController
  def index
  end

  def sess
    session['email'] = env["omniauth.auth"].info.email
    session['token'] = env["omniauth.auth"].credentials.token

    redirect_to staticpages_path
  end

  def login
  end
end
